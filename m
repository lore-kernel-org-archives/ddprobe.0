Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1F3252299
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747756794; cv=none; b=pLv+I8bBOLKhLCYmac3Nqd282GhH68jBXtSaYjJE8ECK96iJd/FhAl+JKrS6KLSEekjtaPR+A/6knXQZaHMGCponwprUy2KG4GpDOEocx+k9YRYW5DnC7c57tMhikFfLsRD3ySDfZbBqoFRiams8lodKf1gb9Aysidv8yaxkwxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747756794; c=relaxed/simple;
	bh=k2QBkdAul72rCmhlC+X1To1TmoEKJSsJ8bLMw/zkg/A=;
	h=To:Subject:From:Message-Id:Date; b=bg6+N7kL07M3spedB1YdUFxyiimx+eDIVT6kBIxawQWwDIoOQeV32ycCLuvoORYUrzRpHaIzs/fW9QaFqGwQhjX0M4EGp67uRgw48XtLVLQ8IG+nzkJLDcQJU/qc4Rpf+dO6UBCr6m56d879pdVWH85KLu4fuTKmIG3WuWJkTQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6XKpPJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6XKpPJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F53CC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747756793;
	bh=k2QBkdAul72rCmhlC+X1To1TmoEKJSsJ8bLMw/zkg/A=;
	h=To:Subject:From:Date:From;
	b=u6XKpPJXZTwhFH42jyLURMPfg64e95s1PuEa4v2iMQMhrHEVAqjpqCY+ph92GD9l7
	 4Iyopny7u6vUt+f5lGAeDS3Yazk0vFn4r44Xp3nMb9W54fCbNY6Hl1FNeFRfOvjGrj
	 6ni0Cz/ZGpYCASLv+YAegTWjLxTYgSCw4o77SYqHHAuAJiNo286n+j/FHyZWKr0UP1
	 hD4EuNOjTvHstmL1kwbv+3r0g41awCaqFRuPQuDSXXYwYOeqZomRAyQNSNA+qSpmWE
	 W+Ya1kIrZ+UMQidR4Iw669SswQuy6YNm42jtuOsm1cbwtrZr8gb1GtEYHE/le7Z0Xb
	 sDHdIdh+oBeow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2B5C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174775679357.20925.13070543302539451050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714cf1871a287c53f77ad629a15abcff1b9446781aedc2385b14cc1f72b7ef26
Date: Tue, 20 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747756793
