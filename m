Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8B02F2D
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EBC7C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667067054;
	bh=dJwpaiunJ2I/JCKom9OqtJGkMlChQvglPpo3zY3GyKU=;
	h=To:Subject:From:Date:From;
	b=pvVBnDJl9nFdCH4XhsHSqhVoJBBJPCu9uG3Vgm9fmaqrSuTYai4KvTSEajMrU50MP
	 w+KO9VetO8yGBCZCnFy2FNFfmuwyGbOk+/a4SgwV2I2zjl5mZ7OmEPA+qm+1IsgjRJ
	 72pxqXxQJf3EvTvCgbHhLkvGx0/ou7i/QIWGS9RjFs22MEfiefMCVvaviqSaz3Ke/N
	 HAyp3B0qpn5emqYbPYc2d0HFweQnW8W9XqSV4FF7mOSmQHNS5/iJf2qnxgUK9FaE8y
	 M5r/xu52knGaK3Xq2G68KIBVIv3bRkJ5lIG/aGJ0wH/zWU+l0FN7VXpudV5IapHP4O
	 D5qLfzrktDbnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 556C0C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166706705433.3205.12122706427020336439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f69d0d94af5ca9ec5ab592a953d9f1a804086acaf03a4c7f8ad095e5fd18fb
Date: Sat, 29 Oct 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667067054
