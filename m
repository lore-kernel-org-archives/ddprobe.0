Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E5629CA
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 10:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7C7C433D2
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 10:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681296125;
	bh=0jtDCJXQbHuKNnf1kf/RHxkMsYrS6+tJJwNDw2GCarA=;
	h=To:Subject:From:Date:From;
	b=X5r2oSK8tdJROB4GKyKN9i4YVBZx6O/se3W0hSwG5pWriTTt408BrLVlqscXdkZa+
	 n4eW+HHGKH/ZHOVyds8jmBgytrFt62XGLn3KerK5tL6o7aULEii4IeXACEJ2rT0AwB
	 ahx9o1g/tEGtn3mr7WeaPB3mnxdfyQkms9wOLVw6OPKcUPdaDTImLANjHtoAIsJNt+
	 FSb+CsAxF1tnMpAL0ZPGOk049w9IiHgOVRMmLiGaZPnZrs4c1ibJXsnZ9OdTZ0vrXL
	 +lQDM7Bqs1kPePIIMLSkatWj2Bp1xWyDlVGLBlPTD5kH13PjGb3TVEyYZD6Nz7gvys
	 qe4fYopEhN0tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C19F9C77B6E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 10:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168129612578.19807.2079262175487080805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4db5fb6ef442582209d5be60f898848df22e58b8c97e23bd82bdb255e664cb3
Date: Wed, 12 Apr 2023 10:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681296125
