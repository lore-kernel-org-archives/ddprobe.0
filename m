Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFDA30DED1
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774132494; cv=none; b=pyFgrX0zRRGHdxVU41Jm9ncZ4n44FOGLVKxnE2DmVXzQnxJAzzzxoxNk+XAOwncIRlBIB8UBEHDdawDCSbRmp/8W9s6sOjVXlGqSbZusoExMLKXvgyVFYFKFs3gPGTQyCb9o7oyki6eBHoLH1RpUOWQ4F6G1tDdUbszJtPvsrR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774132494; c=relaxed/simple;
	bh=RBi1zMghojL+7YOodGHj9uDqUggPsDrCGKwNEMcgmw0=;
	h=To:Subject:From:Message-Id:Date; b=EJDY8yp+4KnCLuQY11TzOyuKoZH931IonRjPfXoK/lCPNssprdpta74541cQM416y/3T1pC13uSzwy3vA+IFnV2T9dGFTApMLqBusZ63Azk6G2mCaRlYQ+Z7zWsk+zBagARcKgOlHWmO7963XfG67Y6EGhe8BOGX53ZJ+sHqk5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXlvPpPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXlvPpPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D24BC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774132493;
	bh=RBi1zMghojL+7YOodGHj9uDqUggPsDrCGKwNEMcgmw0=;
	h=To:Subject:From:Date:From;
	b=EXlvPpPsS/R2n4wIQIHEcKPFtBs/PbGkgA16h8igkCpbpP0qzHP5v6TZNsBSXo782
	 Vag0mo7STpLtYNJq1uUonCCqHFV/YMHwRwhRgveQ1v6UQaGY8NB1vj4qZOPvf7gdgS
	 Mmm5Aqo+AP6Vz9u46lXF7cMESYH6mgz1J8Gopl51csm025HnE5NZcf7RgfbQGMdwGP
	 9V2xADUb8J70QdWN2pmU8UKKNMoME3fEz+tqJeWaILeL341x71AsmWBKH3IuCEEudu
	 5lZ9qn8txP2XrwTNqhceE8bw/GWloSoCx2csoBQA/dMPDviwqnCnixNXERFNBjGZb9
	 2cUhuGqkpvlYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8EF109449E
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177413249357.20754.2557332497715081252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8450d7340b810c894e272ed952c53e5465ef93a1769eb522d6f28f9c05b38277
Date: Sat, 21 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774132493
