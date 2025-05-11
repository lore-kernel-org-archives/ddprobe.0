Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3083710F1
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747001995; cv=none; b=FC/y6upN8LOC7Snl1Ixd2fjyDO8pubGPUX+0GrHRjXKCJtnn9u3IRcLHok/tqf505lpWXrd+ci0HHnPay/N1pTesW3WleGabwAIQKXXVwR3dkSjm28BIO6Et/gH6lzbggnS+arfQO+5lUHBN5avZ/0mEQ0xEqbIv2nj5IIWwujs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747001995; c=relaxed/simple;
	bh=xqvUa+1KtNJhPayrTEuuwr6pfmmqxiXr1PV1usT8isQ=;
	h=To:Subject:From:Message-Id:Date; b=vC75rywjkji4J7cWg7pV3iiY2Cu8aF2NxBsvLl4fyoLoGrnVOHQ7hlo9eBBZv0pd95WnvF2vpOjwuhz9p5WoXylt6k0IiE7moE0Efy2SBgnAyjw2JfAeSfZhY9C5S7qz7WbmH53ml4S5vOCGbGYTYjdW/oUsxCFoSXsd600GX2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjxsEStY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjxsEStY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07E0C4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747001993;
	bh=xqvUa+1KtNJhPayrTEuuwr6pfmmqxiXr1PV1usT8isQ=;
	h=To:Subject:From:Date:From;
	b=pjxsEStYeupdsjJs3EyP31Jj0scO9lon8a+WUtcBGsU6I2puEnZW33GlbBhoXmk87
	 16bNCvT16UGFxBMvvZ4rjYoRgvisjxVQpHkCFzqbnMIdCNHOOCyz5RdIi42C5nzERx
	 2j4e6vF0lYk4jer0RLR8CW89JlXfxm6P1U2kRG+nfJ+dKlgici9xXLGgr2s/HcB/lZ
	 YxVIqJ9EZGa69Zs50lzKo+GYL4cf8KfEnZaI9aPZg19zQLZCtSg0E+mHOF1XPK44HB
	 rk5N5d5Wjcjp9a6Bw/O/klueKsL9Pgg8oCw4kDvYJiLdxb6cIbH6GZp9/2uCYKY6Hp
	 Q8LXKvEN4fM7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5DDC3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174700199357.4687.15959177589248997108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94e144f3433f76fece78015c408108e34be6ccf99806cddc62281a7b111f41ab
Date: Sun, 11 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747001993
