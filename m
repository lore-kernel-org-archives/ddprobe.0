Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4882D171B2
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 14:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96A5C433C8
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 14:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693318448;
	bh=VxJWBpogr+sJDCqRNuP/6roSDr9wI50yzpJRD+WQOpM=;
	h=To:Subject:From:Date:From;
	b=agFUq9JSNfj3/iCJTs8pYaZwRB8Ev7lMB5oKdXbmNHCxgFXlp3XQB0Qv5fBK+BK19
	 0NUyAbwjEB8tn2wCMrHssFv6sHo7iWHaiuqRDLuxxbdwV0sXKbXEo23m4sMXN+O4QP
	 qZQMfLjaimhvtS0p+UBb0eXUqFg96crcYe3jcij1CoQYnJUlJha/+FbsGnixIlgDYn
	 RomtfKNBmoE6bJknXdPFxWidZuX0VM9CbOizLilMcolO/6l6MIHjM4AX+BmclutvSd
	 zYiN2rRbgFYsmHZpVbdQ1XkOagXpFNYGFPWJEizZPcKXxCmydDcPJDRFwhKdpyVgWH
	 mqETcgzaQ67dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B78C83F12
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 14:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169331844868.5723.6868246410024071468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4431d8c0137f175123c8257bffee1bc6ed6f257c2231585f88922a7040238de3
Date: Tue, 29 Aug 2023 14:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693318448
