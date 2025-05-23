Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40547170A0B
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747967396; cv=none; b=RfJ2Gkp0eJo0gZQde83eN9TYgTKzULopUdBReoUrF0Q4767HBC1NY8i4pGzxZGfqQoYIDH3e9ZTaEZZz8jNVz3CUq99ta7rls1i7o7HNDSTSgN5biExUNxzRqMs7qEIJ8ycNWvU/M36lf5c6939LEr3aUiQ1z2r9M/AhfP7VUmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747967396; c=relaxed/simple;
	bh=W++1NBMZEW6YKFt4U+r65/cJ6exSUFYWziUw0uMcDao=;
	h=To:Subject:From:Message-Id:Date; b=lXYqHWgV+07w2KpB3LQF5juLTU6R0Q1iyCEjdNjwJ9rE/UsZs7vKX5OvI+yKUlssr/N9IW5cwI8+5wuefiGZRq/jDgI3Bi/UPjgk0sUkD6cj1kUMozsl/qJ4GHEc8KRi2xHrEm2xZjGOQKfa1x8Q9lkg0wsf4WG7vfkeUb5petg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyOkZL55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyOkZL55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA114C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747967393;
	bh=W++1NBMZEW6YKFt4U+r65/cJ6exSUFYWziUw0uMcDao=;
	h=To:Subject:From:Date:From;
	b=cyOkZL55dZi1XBB5M47WlFEFaV8zNdUzJpkhiRJ5WJ1jT/51RbQfoeXvRPVySyt2d
	 mVzl7RcyrJEAGUsg/NJOATpyym0zl2VqcjyIZ4Noxg3HMHLd9/6Su7Am8xPfUrHbVM
	 kXXBHFElZFh5U4IG7CHr4CMtdNZ+pmEKdsg/jZhdZKkdEaWXG/LGOL62iIf3Sspa6i
	 nXCp+UEYEnK8c/dsDpLjhUtR3oqwKP66jEBx4XhtlCBXofn3RhshYKkbFuv/zUXHNJ
	 dbI4BabtPYN2YnEJkXFhwaDJgwCw5MKarfBhkZ49LT2kPvrTh0x0aK2z2cpFNXWblS
	 L/t+i9tFL/krw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A7AC54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174796739358.12331.18181713936052304248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db33719fce27319137361e50bb50f94ce927cadc17d9bd8cf861ad0179b430c2
Date: Fri, 23 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747967393
