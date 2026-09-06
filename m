Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465781B3957
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788688834; cv=none; b=Jv7sp8t4R7nOhTlyV3AIYqzaIxu8eUjGxuSRkRphFEAtHOzVUGMh8hb57NUVwK0kNIrl/xAlgcgXJZNF2wj/Ka/gUUOzpnerWc48F+nvUQGZJ1EPc5+4fYsfGEpHfllrtCzZKGL887EjUq/2K4xjNTw7nrm3dZLkGx2crtHUzsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788688834; c=relaxed/simple;
	bh=4nNIL+OciZxO67c+Un+z3p7XKjkA0UQd01ntppto9Pg=;
	h=To:Subject:From:Message-Id:Date; b=ebDBJXAuNJa4Lk7YcvenB8YZFuak0nNsstcljzJAj8nT/4DnR9SVhZi2dCLQ1Nm2Pr3dtO12xSvyPKfYtYMf9ZhPUTpuglW2KlhrTCfBKymqQhXrdA2yD+I/Zq+VT32NsLPckjBUTS/XCUCiByPeY7PZvGoKRbEGgamuqbvbZYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSkn2AiB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSkn2AiB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFF3C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788688833;
	bh=4nNIL+OciZxO67c+Un+z3p7XKjkA0UQd01ntppto9Pg=;
	h=To:Subject:From:Date:From;
	b=mSkn2AiBLWU6RZzOg1Kj+3m2Ld9RwTGATyEQ0TPagq80bs4ubVALkHAfAVC9c5DKd
	 Io35cHFsAOe/X4k8++TX8zYrSveGwpWmxLPHhcIfuRIMJNoWsac+OD4rULIgdWoh0a
	 9Pb+Hgc0N02eFOCcMs+rAKLazOXhGnllldSP3ZOAMkca72HZ1bT2+iUucEq6bHewsT
	 SqHjTZ7TOfCDp/PzkFciNOH2PRtlypGgP8WF/4T9YaZ9N2hEUrswKqVZChS/R2zxZn
	 lDCw+tnf8ELqPsJdDKqrYM3vOSvCgwRoitoQKA3JH++dJXo1as9VP8aLQ7MJS4LVGZ
	 HQyGjiyo/j6kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB487C79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178868883369.30413.7629554876877891995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb3378d76decd4a1692850e4cc3bb6de0a91211b0024f39ad4239be41539903
Date: Sun, 06 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788688833
