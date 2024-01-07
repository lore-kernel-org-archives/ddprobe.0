Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10290134A6
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbiVRlER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E8D6C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704632896;
	bh=6kK4XzYMYdt5gtaevD3OPxCWefNpD50Vq6GZGFA39G4=;
	h=To:Subject:From:Date:From;
	b=XbiVRlERHKIK72QzVc+h+xLltitop3CPOzKv3yUacVmLm8fgNpO7/l6W180cQw1NS
	 dz6z+MD++YBpS++nej10SbCGeD+NCeZJC0aiIDl8WXdHsZi4bsS4z89mF3TdW66w0E
	 vYMuvSdiHM3iUlT6ZRIpkk64KhKnUzJuRZkOc/kgJv4Iecq8+VmnayUDEUyolqtCaP
	 mkBEKS9RjPK78ziOkhY0D7c+Lspkp+/5tqYoK6drzehRJ2FykXcrz6tGmgV9c4BLoy
	 7asdTeO6/9hnjQaQDQiJw1Syv80XO7Im9uYoeLacqlNebeQntsliq+u9XJcALLKHT8
	 TQXr7lRCtCezQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C29FC47074
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170463289641.25793.2585079965402280187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b66525baecd9743c789acbfbaeede303fe2d6f47771154770c0d783b7772d4f0
Date: Sun, 07 Jan 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704632896
