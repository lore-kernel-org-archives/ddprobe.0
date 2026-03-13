Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB9C3CA4A9
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773420894; cv=none; b=Ug3m2BDrV5HqW0WQlP3CFVpaPyG6FJljceROn+jpuLTKY1eqPeAhasOzfAF0+Vpl5knr8XXsOEx3QmbOc4JybvEdjV8/zD4F3z/i0myO9eraaGFt+ykiHAaSl/R+tOuGKboL9TGljUbpJjmAS2UE9X5XD8Kn2Aw3w+v7UwaRTWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773420894; c=relaxed/simple;
	bh=9gl954bidUQorA6rbNEO33yyrgQAPmDIaTczIADcliU=;
	h=To:Subject:From:Message-Id:Date; b=leDex8VTZnuyet+/eMrEHRKBeARXALhhKxs+/TdhQIE8jCK4IIcNDzIwtLJaS6nh+wekTLK5irtq0l44L73jPQm1rDKgup/hR5/pnyKl57PFLvXVFAankqyabqmWJ4QvVL3VDvoJ9Sz0I6Lv30K0HO2XKS9IpnBUVDYj+7zMAaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQl0r+iS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQl0r+iS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2802C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773420893;
	bh=9gl954bidUQorA6rbNEO33yyrgQAPmDIaTczIADcliU=;
	h=To:Subject:From:Date:From;
	b=vQl0r+iSzDtLwPNp6u6i6XAe3X8km2jYgVMSFDIKS8YkdmyEIwFL/4gBXl4vaUO7P
	 LZTvazjlRAhDfe+S40ZBrYqKjduy3M7tFME6hsBcbI0ry4p8N5yup5394gZabYf9CU
	 aquZILSSdEdCS5B/KaF8gwSP2WE9o6KwDaewvvL2i0omGEPJ/eXnHuAqJM/ND4qc7V
	 YoA1OQUIeSoeJ5qhXjH4eBcx++GmVHZP3JIa7YQVQt1gvCaD6gQqDM2ikE65Xplj5W
	 Hkt4y4AE9h6UhnVSUConOr6r3wF6bSEGPRJ90ey8g3+yvk1pjHJOLVyF3Z6+IcAdAd
	 PxvbaBff/W4lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90109107BCCC
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177342089358.6903.17211478678156458237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3c859222476e2c55b320d4b8ed807eb612565878ee128c334e6a4c462b792ae
Date: Fri, 13 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773420893
