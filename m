Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34373137E
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754438994; cv=none; b=SqGHQV1mSyTPEv5llIvPmd6DV20GFvtxGeXnRKPmmk2jtbvZm61Eka0gUKqLw1ykAGJcLiiWsmkkkzHhDA3U6y4kvuEU0y62q9AYBNAfaVJgaQPeGLT/gq7m4GGHUo/d68nLx57r/1zgohS5U9F4PIWfh4eKAw3CsbM5ksYhVyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754438994; c=relaxed/simple;
	bh=XOFt1S4PwcSLYDoHFJv7iMwRgc07bxqi6BL7z3DO9eM=;
	h=To:Subject:From:Message-Id:Date; b=YFNXRNLPyEh+6sTLJnv0ghyT7dk/Ul2ZyQQwEonR+NqTJ9QJPCog//k2Ij4c75Xnqf9CFOAWxPT+0xh9KcQ2ML5BVAqaTlo9cr/lp7dlRyipcW3b6F0zB74TUPQy14EumgvmSUGsBmk1urMJpeeO4CqObbB1f1qepx/nRGFniDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6V2Ei8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6V2Ei8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D93C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754438993;
	bh=XOFt1S4PwcSLYDoHFJv7iMwRgc07bxqi6BL7z3DO9eM=;
	h=To:Subject:From:Date:From;
	b=D6V2Ei8vtdX4h6mBh4Gs3DpSdlL/bVjAfzV64vlt5okfEbjxOS36JbDZbUjn4Y86V
	 CMApayzi+Usz/urT9jP2VNrcUhcLsbp0Vf0o4w/RgHzE+q55iFdxFakKNtqZ37jpEC
	 HPyDYE/+hRZbeY6xHNdk/nlCPsmvty+JOaBvni4EPzE3SECS09DRPsA/ELV76PfTwX
	 HdvAT2+e6MvNrhbMoF/TBBFkR3SzY/Ycub3AZZF6YAGr55xzsjPdDRMtqOO9a8LDcK
	 7CenQdA45+5JojODT15kYBHtGsNq2HwXawA7l7fWgAj73dhWR8ty+liCVGw2f9Qldg
	 gO4/woagk+g4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9042EC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175443899358.5397.8538727794577876652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a6978df78ce4ee44c8046764294972565cc5a2f6756f97cf191019424c55ba9
Date: Wed, 06 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754438993
