Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758E17C
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 02:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD886C433C7
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 02:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690423328;
	bh=ybNazmwZ8KI7W2vO84bKLucwkjRJxv7QRokPsVHy/Ag=;
	h=To:Subject:From:Date:From;
	b=tVjPlJRhpDMOX957Y2M7MMBtgnQLcz8QoYpu0XoaBlEy67KUBMEOso6S3aVIUa/tH
	 41CAzXFQXyEIoTKdxSXI7ZXpYKwo5OKOQz/cPaZWi4nu0NwQixrKe7Q+Dx7vF/VUd2
	 QjQ7BxxvO7sxa1dgFkVRhe9aJcLIbBK+VS+JlCHFFCVTINR4L91wlIWAFj623n/hAE
	 PwB54mPB6QGC4eQR6vStyDtvm3NdtTO1rQindkgIfm2lVAlKGTIEKkGal5Ba3uEl/E
	 UcMcQ0xf6CcBuHSG9E15D/rQmgeGkz104/HHKRLGb0KEo1pFJTnqgbA6hVaHrWbMVL
	 xHfqc9hBP+kmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1E6C001DF
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 02:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169042332869.28092.941111050766453453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3f6bb59c2495b5ffa605e06344973ccb0a8ec15da43d97f860c84dd376a8ead
Date: Thu, 27 Jul 2023 02:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690423328
