Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351FE1E32D5
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745446794; cv=none; b=F4+HG3y7y5G5SGvx5Epp2/ZscpHaNtG/5B4HpBMlasZFX6csK8II1cfd42tIozWhOUDfLYVg036DXEjwGfBDv9CmI+d8p/dMbdp+URELYQEKsKn91qCY1OQ2hMURaSSrRp48DJAeQaURe8ET3T5cre4yeOXKHP0ZUMY6V3KyXMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745446794; c=relaxed/simple;
	bh=lEmmuhk/ScLCGf4vzj6O61x0nJim5lD6p2ah1x1V6qk=;
	h=To:Subject:From:Message-Id:Date; b=DH8OKSvpjQUICWjqTAcR8NDOskTPMwrY4xfNA84JXoETKQNkvYltDvT7E9p0Hx85IMeEBuhfKh2mBTRSxthklbzGCe1JjPBaLf04BLeNA7l0y1hQb+9KAsE4vWZ2fB2iUvy4XpdXU9ZZTi5bz0t6ikEbrVwy+Rqs1ofXiSZg/5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0KncP2C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0KncP2C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F597C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745446793;
	bh=lEmmuhk/ScLCGf4vzj6O61x0nJim5lD6p2ah1x1V6qk=;
	h=To:Subject:From:Date:From;
	b=G0KncP2CkwZzjuweAc/IDncTXTWlSGiN6sJBflD0p+u1xur9X1kbk7oDP9ODi+w2r
	 dSG1vr7ldNsk6WIDAAyBbFxFcyI1vt1CjqVFLR9Fo3JC3QSBHXy0CLmH1PgyERcPdz
	 cYOuSoSWEiFfRRiPpfmYBCZDghBj321fmH5xOqW2JZ8zsGLtW7+HxeyhYqfShPv4vs
	 P74Lbtxaqm7ZaTTKLx6pUK0za/yEI3U7+Xp+TmtmBEgrdqvEVMvEyeN7rMZRm92PVW
	 48UF31XMAoBi/xeZq/3dRFE7MfgMvW5xcYkaM44tFZcrmdssmuvTtNh74Mi/2Rw2OU
	 Tp8ufFIfNVH+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF7C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174544679358.4905.16738309658717752401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a98369a4134827793f1d3cc930507bc621761aed071f88bf953d36fd0f174e6
Date: Wed, 23 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745446793
