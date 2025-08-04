Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A7521858A
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754324394; cv=none; b=fbG0kPJ0sluyxwYpiZh6vDsGv1mr/rSUf2PXZlPvQqmS4phekRCZ4+3/ouVnPo5FFWHXK3ar/BjoB7rMR5Af5BjdKiOYL1HORv6NMsfhRXkLhhbjLY4qR7EaOs+Wv8UQJmeMcXRc5C1AE12mFFemg1qc1MmihpFQUEDvjs4dPpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754324394; c=relaxed/simple;
	bh=T+9J0/4CBDi0kz+yoX9yVhTdcRYdGAVxxW9SqPTShmc=;
	h=To:Subject:From:Message-Id:Date; b=kMkyuGzCqFu+Y0k4e2+o2NyMT4+S4PSAowbDLNsqB7HS+80R/bSyVeaLd3a4gHjWcR3fS0sOBcxUBsjExGlR9DjgtxlSoOtH9B0TLVCEPNNbqXuarl0xwLapS0nMIS9abGYcb3UPX8DtM4A3q0VwZn8x7CvZWbcSfU5sbSsQpQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDU4Qqja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDU4Qqja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB00C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754324393;
	bh=T+9J0/4CBDi0kz+yoX9yVhTdcRYdGAVxxW9SqPTShmc=;
	h=To:Subject:From:Date:From;
	b=fDU4Qqja16gWSABXNBxAuTQ81o5dFaQMf1v0k4cZ3+fUfQ4QpX2EW8YbKd94dzQef
	 Q082GZnQe+We4UU7BMVuG+J+jHCnNREAmks2Z9dBszVcnTkGfARNc592ea+UjDwiIx
	 5Pd+7SCzg2auWp3RmA1giTvQf7w2oZswVPL3iiaWLrJ2NsCKNOPi/EsTfYO1J3fQEy
	 ol8fRYsWU97mLEB6LTrxaAWd60YNBR40cZYH2h0wVIqCk+JNjSMdDDzrM1fn9aYusH
	 J9xHq+bhHlhoIkaR2krL4wYifGp2Ge2RTd0nTISiS47Aw7D/JLhXus++QdRVhqadeJ
	 2kfJnVhcPcPPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98405C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175432439360.9582.13779649913386307532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3105fd83f076dd5fe50db66fb59540ff9dc005ac5969c0387fb7326ce168a2ef
Date: Mon, 04 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754324393
