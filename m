Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BDDD376BD5
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 21:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782165394; cv=none; b=MXCUYD9YL2z3CCPkzRNXuRag/aUTA2vxzO8RjvzLNI9wfkhcOlH4Q72KL65sb3fhsZEEeOWxzz7JSDgJx1u85/ou/+zf7yGUoDY3lMh8qWLR61hCaU8lWQQzmyPZA9GQQ/F7Q65fMlzddKSO2Fr4te7IMyiaOwlOGBVciOvyBuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782165394; c=relaxed/simple;
	bh=wIKDEVvH27ac8Yg/wa/350QBZPqFIn8Lw2zle8Pu+fo=;
	h=To:Subject:From:Message-Id:Date; b=uW/j/XLxoDaBj1jYRyT20bvFu5muQ7ImvGE2XzrIIyo3OaXyQI01Wt6sycR6Zy2vjFd4mNvxUsM+B1aGILoXnsMlXM7d4m/lBCB7R+Dt8I0EbGzPdQctw8ZrYQEncJeTDHoK/gyogekeA6ZCG49OpUAoM2zz4A4K8TLeVS6nyso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ti4+oX9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ti4+oX9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC72C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 21:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782165393;
	bh=wIKDEVvH27ac8Yg/wa/350QBZPqFIn8Lw2zle8Pu+fo=;
	h=To:Subject:From:Date:From;
	b=Ti4+oX9lXj9s+vp2veqSVD43isD9uHrBDuUOZcc6zTBf8lsBI09IBrvsAfGQKUDId
	 f6W/QLcYekw6c7AfHBvfqLzWrPTu9P0AuZGiWplQ4VDGYyc5MuQLQFtQJjraIVHfBI
	 UTWMOkFskEYw9ZAC6TEKe2fSoG89ZGIx5evdZjKPBs75DEJCxWt3nJlQbTaEH/9Gkj
	 0MgUkDGQm4jBB9daPdrloa7DDQzGe+C2I/wqTNvCin8Jhfb5qUtP96A1ohaDg57jAH
	 iyQj9+K6ERMH2zrm5j3Rai8o1iZl1TB4dC9Y6ItxMfEIF9AvSKusP0rJbgTrE0tbzK
	 H6z9DOZI9p7IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA7ACDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 21:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178216539370.7266.2173682751157883838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 217dcbb5f22276f4d8127152520409db15dfffa5f7130ff09722e2442396597e
Date: Mon, 22 Jun 2026 21:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782165393
