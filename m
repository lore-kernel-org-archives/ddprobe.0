Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362BEED2
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 09:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D4DC433EF
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 09:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683106745;
	bh=l/IB+MVYVHvVahX7nffUUsND6bp2GIdCu0Crb+iBlbc=;
	h=To:Subject:From:Date:From;
	b=TqJWTDx7SHpA4Xc7MNyyLRveSqLP/o231nXuZTyVYKHlb+pz2Ew1aQx2wk26pbGFh
	 iMIoOK6xzN96maPR4kg/iBU+zz+5vs+klyS//kA6lTJvk3YJuG1WkLYItw7QrsJ3aL
	 NU7hmK+s0+4bRCB4NcNOKrf+dpv9VwfGSVCEEKsAdBPWQp5gVZ5Ty7swsbPeGqJnCF
	 8EKHPPYm/gqe2ZP3T+tp5bEnA6ZuZYDgnfPBtOQm8HK+GfoBpm26a+YOdrWrAq+DQ2
	 8KpDIdBFR6PdgKx7Hb3aXRcdY77uigZNQu5KWB1PAWOFgUFlzCx4cr2T881yagc+3v
	 qZD37USHEnw6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A09C77B7F
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 09:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168310674574.28147.16912726338904056108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 598d5d85acb91cdfedbd9771f7a446c9c640bb2ba2393031ef07f6871f95e088
Date: Wed, 03 May 2023 09:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683106745
