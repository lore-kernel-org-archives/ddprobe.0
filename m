Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D705B2820D7
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750411793; cv=none; b=F5WhnI3RpgWFJwGOLL6P75Vsd+fx7sUpXTFNHKAK1uP88CNZTwV3Wf38QThC1qfFHN624ER3Nsz3/IjKSVdBPifYUsl32S84mrINO0jktR8um3iHWV8LokxBT7hxTC/VSfavORZqXdpPP6bOp6F7FTZ09OTbSndLiXvRhkmoOwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750411793; c=relaxed/simple;
	bh=Yy2UtnCFRMkycVH+8ym4FQS94czJNkHrok3yUZ0MefE=;
	h=To:Subject:From:Message-Id:Date; b=d4K7u6zDx/HBuy/5lhuMiiFY+MCWBYk3u4yfYPhLqDJM2qBvzsX40GTcICBNKFk/VTrMdumeDmBluGaHo7KSPnvhavacvSfqiSfdFg5Z2qvgPDp2FLu4Ly4d8n/Dsp6ZN0CKXpoOf7z4jn39xyEXJjm/MLUXIAlSNmmSSA8A04A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3k4ltoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3k4ltoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDA0C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750411793;
	bh=Yy2UtnCFRMkycVH+8ym4FQS94czJNkHrok3yUZ0MefE=;
	h=To:Subject:From:Date:From;
	b=d3k4ltojAwyqEWYZ3kp48sTdRhdRncztI9QqNkylZyBg9YTUaX2uKhzpA+s/YVDI/
	 uJCClr8qg2WK22W8ksA955aZir9qhqgNPt3ot9vhDPV1hklx/j3/lz60VUHb/6crtR
	 Xm/N9/QJ9nHuGMGP5gxEFvj/aGRbfZhIXGVGFsqRkl9erFCTUy26UE1xHZv8zDRiKf
	 cP/UOW5vMH+Laa4IDAPo6qLD9Qe9RsEJIM6D5vuZJNqi+8NKqoNYzVqAyLToMIS0w0
	 VKxyvLlsgixuuSIWabqx0zgoDzYC9tsmmA7ieVLXNhCWeGsI4/Rofx78T1b1vs3AXB
	 YdAfjm0JZo50g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B7C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175041179357.16799.8787799955711949416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27063d920e7da216314a592c8a035c01aa306bbbd5cfaf462f4f16f07774c715
Date: Fri, 20 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750411793
