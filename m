Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B72AD520
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 23:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAED1C433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 23:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677714965;
	bh=u+WKLYW6drs/Oe27xGB7Xg47pxVy8se+qQ7JuHbP0y4=;
	h=To:Subject:From:Date:From;
	b=unqTE1FsyQrBQ7e/8mG8AywXTfGv+APOkx6EQN8HdTMgdeI7eAytY5v8zp37yoZ4Z
	 YrBAKhn1YCkeye/uL+Sbnhx0h0Z0lkMSLbpxqzF0eLJmKpzJ4QgMZSm6sApbkGeiab
	 M1fuEisXjbw3C/1s3VN2Gm014HpZMjYYZ+HoiMaziGKQuZ7YFCb4XtKjA3To4RuOxL
	 2PNTChj+aBdJaMhA0kJVpI97NPvSGOFoXP/USct8ihxO0VHEQLHaoNzFc3Vhdpfyio
	 BZCbk+7JSTkgkCBcHjYPn/Mf1X0rMKnkToewr4TBpWWQJwOAlxDueSaeuMN2zscTLn
	 +lBEunWgFZHJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B7CC7EE23
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 23:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167771496578.29853.12257116149057709927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10ba956bed78f6b22446574bd88a5a5ae82947f0b0fa955ad0657e974fb4dcd3
Date: Wed, 01 Mar 2023 23:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677714965
