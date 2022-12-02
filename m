Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC404C71
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C32EC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669995054;
	bh=slcNtpdJQHjLlpkxbYQRhIDnstvmk79kFz6Yo0GF8Lw=;
	h=To:Subject:From:Date:From;
	b=hs2MKmwBbkZbtvcXIgu9Rpu29BEUwbWk7zVMXFuzmLyPGP1Zy7txT9JwA+6tErG+m
	 9taCZAoNFI2IVx4xUr4yupLMU3+9Lhu/2TM9IKvWXypKR20KBuevk6veUUvCNJCYOz
	 1WRml9/G+aTrpd843IAD1oZMD1XFFmViGJXIZZvXeOroyTDfyC9+vGAqMUOjCCGEDf
	 RniueCgOer521aMiTLNSu1pTYUKzXRPf5H1xwFQsj13LH/kWOnPLhKIimkW4rzsnbQ
	 sql2HDHBOzpbbOh6e2aRvWaiuddWOl8eMOZNEJ/rcjf9yq0BaP+0mcD6C/9m0Hddh+
	 IqqkDNTT5/0VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F19CC4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166999505435.2293.993650276801027623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3075aefda59a59c1ec2979d1732ebd67dd69850d3f5cd9f3217e8abeda29ade3
Date: Fri, 02 Dec 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669995054
