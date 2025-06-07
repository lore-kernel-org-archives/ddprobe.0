Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F373F17BA9
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749317394; cv=none; b=ctz1/UWAeVzlBhrCJ9xwde8QCK3JvdQtQHuTJlKVCQ9kf5UllvGsdCjOe8SedMz9o6LgvzZkfBIj9DvLTltOEsDNLflpuzbF/wspZTSS94BsWpvhUKi4QJ41nKRBYk7ZvyAGFWDj0YpNC4ycpNAFKfmyyHjcgaDjJtq/nAsNZRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749317394; c=relaxed/simple;
	bh=szA2oeJY2mN4FlEfY0xb6GTNuEQ/Nt06cHSU69Mqnd8=;
	h=To:Subject:From:Message-Id:Date; b=kEp9YSKI2YwlHJy5PnithGNjgJcBQHRkyF6FVhniQTUliu8jszvlP6KqQj0/HKCOr61ZKi3w7bdyLgKAMYkYv3BnaJuqUlmTy32G5BqTboPhY3sYOsSgKpMDzUzZev+pYINXXFmNwPQhTAg0VRH7scbz3Pfd1xrbI+ouFN1SyL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyytt2O9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyytt2O9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5B3C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749317393;
	bh=szA2oeJY2mN4FlEfY0xb6GTNuEQ/Nt06cHSU69Mqnd8=;
	h=To:Subject:From:Date:From;
	b=nyytt2O9ztwrZ5JQaO2mRP9K+RdvqqJ3vFzAWXneahTNy+nYYlZkM3hRFI9yABn5V
	 44gEzP+cHsqJLGoUlmHk0ybKTvSKBHITgH5YfrZTf42irkZSf62dSFdqAZO12NU6sr
	 5lZ/hSZZu1nfW8M5gDWDTxuQCSbjPvg3nJH5yMKZoTfVUGGmn8ezL1VzbT6yxJAEWF
	 zoeLqk3R5FxC9XAu4QNlE6YYXHngibN7+tiFT499gBMPh63/y6OtShMJEoIsJDva28
	 3x9NQuRWcxQbRK4LYHcAWpCpxgPtbK2v5drM7Q0747liz0g4+7HqHvPR+Z5YJvbq7V
	 Bo3PpLJUnC4Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC8EC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174931739357.25414.11630065163658449501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0219bfbd71967cec327625158c6b51cba3ea16541d4c56ec713ab6231b162c65
Date: Sat, 07 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749317393
