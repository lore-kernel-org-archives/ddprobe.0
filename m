Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95515C8F6
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 19:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BA8BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 19:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686425526;
	bh=uiWMoHcKO3fAqpMY5cAAJT120DeCRHcp5mJhrLMM4HY=;
	h=To:Subject:From:Date:From;
	b=otJTq0IT6biL6MLbkO6TS9pX0e3vLpOd0e9VGGnCetz3PM0NQQjxtpvIsqM1q9IiX
	 g4DXVO2lPaq3JA/4Il1PIPGEfXUlXXZFlgEaTwsxOBIp91oQ0LXlPdSDF/CbIp0NYe
	 E3NAUYZQgy/Y01qUgRCOXnQ4BCLU3xK/LgVrTpctdKAP3xo43gTxXJQDrEwLVcI3Ba
	 ytydCZQJ6fAeXp6tANBTHcqRqUkLhb3Y76E7iYkyt5OG2uOEOevvTlaQgRsUN1dolS
	 ICMHI3l948T7YBvu9iiVTr+4tVzvR1yFlu2K/AWMKjE330eekoaGLzQXVPGJuK+WLi
	 WiOJQ7j3FCVGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB3EAC7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 19:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168642552588.21360.3435054491553311337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd99b439baba9ca11b40bca88023c024dfb29d9cf441e01bed9e09ccb7946e14
Date: Sat, 10 Jun 2023 19:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686425525
