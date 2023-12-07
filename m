Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81B735295
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdg/OvaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78BD9C433CA
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701943696;
	bh=2qmmXp5ICbESWary6Uo3YrUXzzi3Z5b596f2k7ari/E=;
	h=To:Subject:From:Date:From;
	b=cdg/OvaZRrwEqaZGdGFu0Pt4y1a1AAERierVeJA5rjCDWajfTsVu2DnhcCGqHya9M
	 WkyDAbSNXJw9jveeT8qF13uZCAVVtdC6JSNM4rbSLeSechc4gs17IIlKA87SckhFN8
	 UmGmqp+iYDrGerwMJtKBsnDNGQH9n2coknNb72/zynLoY7+U6zhcBlITQE5rVP6Fim
	 AQr2gRBLirsZkIdpYW6rkf32rU4MBs3SmE94EeT/qayxhhDGhwOqN65jQb2PaeaWTf
	 /cKLZ6ZT+UYwNBg3FDDuv+tnQVfgkWttZRYNvAyDO+uMHKEBhj+zwLHsADmlSdb4R6
	 m4kwIPwGB+W0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611A2C10DC3
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170194369639.20499.9785623202037441618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43981114be2d915718d90c7e5df53e61286f99a54e1c0d067c6abc7de6908a87
Date: Thu, 07 Dec 2023 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701943696
