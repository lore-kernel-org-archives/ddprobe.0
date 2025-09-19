Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7881DD543
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758303594; cv=none; b=s9NEaD5rGVPeA9Iyv0l8k1vw51h+nwx1rR1tl8/n/ZeFODnN1qcJpYN20d5xrO/C+26bL+LKpWHr94gsgkVWaixBezkP7Y9fC85Hmdnb5acHbjeE1EbI9+DNgcNK8NtsxO9csCyaEj2pifr7G1SBiPGBtgSWGcAydhFaQrIEQTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758303594; c=relaxed/simple;
	bh=8emOJD1NLKYcP6vZwUxTBgznh98WQd1rXk3t0JYY6ZI=;
	h=To:Subject:From:Message-Id:Date; b=LKauxg3PpKjYMBgM33j6ykbsS0QS0234KyiHgvxsfu48fUevfX35qPBFEalk9gdh4fg6/Bw3x3ADD0ExMq8e1Slr4g+DCDCBctIjhA8cFJLcCpvzwj9WSxRh+rDFuI5pPZulK7pj2yOmf3T097iPaRUeIi4ge7PHdiVW7mnJr2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/7PBpqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/7PBpqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C9DC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758303593;
	bh=8emOJD1NLKYcP6vZwUxTBgznh98WQd1rXk3t0JYY6ZI=;
	h=To:Subject:From:Date:From;
	b=I/7PBpqOVmxnkBow4HPbCgsHviC9ExHg8ygDv3RQ519ZeInRedZVMi2U6Levu7sVc
	 WHNoMu0i5YMNVN1XnaBCGy8/+166K23NSQZULxKufz85bnNs+9UkjP0InuuUaMX5lK
	 Tveaysay5UvdhV8ALRXlwrAAFPb1V1fmk0dzYpAQ8uDGeX0VcyIQFKH4KpfHYYqrjE
	 Ql1pZsYeU/59KMF2iE1MwSmIGY/DOHrIYMHiO6VHSgIzu4/z5XB7XQJt3b2of1lc1a
	 uvFnsn+A1ZrQBP7bTEXQPuJ6WC9k597j/0E0UAVTRhocH0+mX8yu6WTGbT2OkCx/QC
	 +kL7UDiD7TZcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAE6CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175830359358.5426.16416518955214260646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b205bd63dbc7032f0e85375ba88fbf03fab13099e38ad167814351de10400e3f
Date: Fri, 19 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758303593
