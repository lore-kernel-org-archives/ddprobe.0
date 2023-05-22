Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FD7A31
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 08:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC585C433EF
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 08:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684744385;
	bh=k2ULzwdLDSqh50uJTmzl+Z3bgQn6ENEMEVyOP0vK7UA=;
	h=To:Subject:From:Date:From;
	b=HNqBGe1deYpwt5E9qNu15hiUpg1rYn3fdEdKxceKtwsvckAW/UwehtoTuuKktvz6i
	 mQz69DcXxIIWZ3a1It5fWii4997s37GNeb84o3wMIpsEQRnwYg7LBK4AVBDi5spSCj
	 H1askD2fPbiet1WVbOCPUrfk7sOZgQymRY4kpFZb/W6523Qvci+SoBKLVWSuuAPvae
	 IA4aj0XsC0u58RM37oBCaD9EUSXcIWBkbwrRI9mIV36Mg+dnlisyYUN46ZN3Zhwtmn
	 m2AD/DQn3y4kWTq8VcH94kth/W3NUSFoHyi7/s1x1PsjXCbs9v/k0d92/sxLGJEj/z
	 RTZ0h+vnnHBUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B474FC77B75
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 08:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168474438573.20690.8127120970887939701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b621f6c666c1e79ede74286e367fed50afaaf9c55299056753b9859fc0e30d32
Date: Mon, 22 May 2023 08:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684744385
