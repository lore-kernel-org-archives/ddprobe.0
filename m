Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E2046A6
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 12:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8CEC433C7
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 12:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691929388;
	bh=FSnFqM/xxQKGXwf2JphqsbMsJkQfVfnWkwHP80aAs4I=;
	h=To:Subject:From:Date:From;
	b=Xmq0sceJ4Xo/RRNnpPx9MnWOYrWU+TG2l/psBAEO9CgYMT2Fj0oMuHJxxm4aD+92c
	 crGn85ZiYa5eMAy2n48IJVAHYzcFj9ocAF9NmCAveMPmKTpjmG1P18OD7nJntxkc6m
	 T8RYBtnpKoSG+UngaeEfOTN8qGsEdjq+4wbG3Xje5ikiC+h2JAjxxxxXfu3ORNNbf9
	 9VxBnq2qRqvO4t/0Agrf44WvTEXrR9AzPCNdJq/vVkKRF2a2F7smmbslxayO08LbM8
	 Ea+lkykVIOthwl6xly3VwUPYJsFGwT85TN+y7GpoTQNiFJFmuVkYwpLAc5+dBYknh2
	 QxUGQ5S6mKR/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2F1EB64DD
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 12:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169192938867.2431.9671556972617776533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9fe63c2768368b4df854e11b6d7258151116a1a3ef4ef3c2b0094b3e46e749
Date: Sun, 13 Aug 2023 12:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691929388
