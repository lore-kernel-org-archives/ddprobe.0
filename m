Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F09EC4
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90138C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670650887;
	bh=2g3oP5L9lZ8mK+O1iZ0LIgxw71MODYXbL6ZCgd4loTU=;
	h=To:Subject:From:Date:From;
	b=lkYRJ+npajy/qAL6uTxHjzQhG8E9bqSxGQLrdY90EBVnKptBty+IO4MJuu2NOm32H
	 ShADGDWyHdndFUtCK4NPCnqaG6aG81ioXUFYhgRzUVriwPCssejfb0OWSe8Ymo7D47
	 VxN4vIiQmbdWwZtvi1xqOUa/hvR6+44kSiUHNX1OxhNRRT2XQL8QnBu217LVRQlltO
	 mnr3OCI/XrLUeXbPsw6rV/nPz+C9yzGUccXb5FUlJxd5psmWwxbU9bZq1wKuQe/QcW
	 szVBlIm9dx3GXfyLPNQ3R8V5hebcKwdP81CqmiGbW8LVVP8zYO5DmZXd0EL4/eOS91
	 o5uiEAjJvH8EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D375C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167065088740.23533.2996059925775687667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f82f965d8b57822701958c90986691260ab2dcc8bb2599252bb0ad89c6de1b07
Date: Sat, 10 Dec 2022 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670650887
