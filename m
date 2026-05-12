Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA26361DD5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 19:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778612434; cv=none; b=khEpPOJ+8F6jwE6KfOpFKH4eMZi9RIV2k0IqpRCpxzm3kgeHN2h85AZ4uMCuJ/pcFBHVQe8LH8FnR/ZQVxAK6BBU+OTXvGlDwhaDMLNxUHQDtN1JlFVWjT/sehVCgtCsO3Wbaawidl0r6YpBzlp0Rf3vJK8arcJK1DfFpM6j+MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778612434; c=relaxed/simple;
	bh=pVH2byMObBkpYy6Bb41t2u493h31XP8+5S0d+FcXKX0=;
	h=To:Subject:From:Message-Id:Date; b=SbeF1bA4/SyNP+DmBzlUzJb+Dkk0znzVl+rC+0Byj+crJBppd2+y8TDPiQ0VDEQzC6p2y9xXCg351hiogUNbwr6QjcFkVnME0jxYxtOxEKJn2NyYnYRFJC1ImLwPI7bxoBJupTEVdv1qPr0jJYEuNq2Ge4M701goCS+e6KIoaE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2CxLiTn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2CxLiTn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA218C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778612433;
	bh=pVH2byMObBkpYy6Bb41t2u493h31XP8+5S0d+FcXKX0=;
	h=To:Subject:From:Date:From;
	b=B2CxLiTnBbRdlVoodOkm4eB6Mr65kBm54N4NFa7hpoPoOMtWIKoQFmwUwHUsHC8A8
	 s/T/DL5z11W5KvjYcNnJStWa7lKX5UtXxi9WHp8g5rzU3ufWydmxaTvgWgaPuUCr/K
	 E3LFMcbKKph+nJS6LRFw77emSA5T6enenA1FDndwBwOJVgqKL4BUQNjXfQX6Vi3Ot+
	 NHlH6fiUq6U6LkOFl6SEtdUFCW30cnFRvMjENXurLM3TCiPPG266e6kW3ELl9KET7W
	 XvSw59e8RmwU/CAY4+qIwd7HFxXDVIdFLmazrMPuI/SujVByQMUFALgBXhlm3+gfX2
	 YbRYXgjxSHbGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA96CD4F21
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177861243368.16002.17586776722053239543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4ac77633f5674629679a4c70d2d1efa2769d59b2a3479fc2b9a401303c8235e
Date: Tue, 12 May 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778612433
