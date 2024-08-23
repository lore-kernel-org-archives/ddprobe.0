Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3023F8488
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724388354; cv=none; b=RvL/JOmzFaIEwm7NeKYZOn2V7RXBJtCA+QCa5VAGjHWhgmogz0EMmAjClluv458a86q8NbGbkp6z2pEOc53fD3fArnINS5h687Sq7oSzu62KWPpuokOQbOAn+WLLG2Ce+HfslfC1kh0mOxeLuBiZwFWvKB7CZK+CPseb5eaYhdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724388354; c=relaxed/simple;
	bh=DsuGU6LLm7ruxrzNZD0LYnFa/rxtWzScfgxAbXvKuDw=;
	h=To:Subject:From:Message-Id:Date; b=qfHqwJh01NN80r493sQjU2MBeurUVRyTbPv34HPBk3v5OMSAq2ZMfhk6AeNeURD+nsjNdDPoA1mKjZeDJ6GoqICc/bExVTZyh6UlnsTfz3/NT5KVGHskkUbe6wOnYTsp12kroosnNARgUmgiqJK+Y1bW4bWdfqpddwjCrxlr/QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCJ5HCfF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCJ5HCfF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD47DC32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724388353;
	bh=DsuGU6LLm7ruxrzNZD0LYnFa/rxtWzScfgxAbXvKuDw=;
	h=To:Subject:From:Date:From;
	b=uCJ5HCfFAQXnaDk4RMNtOPkeblb75yLbU8oLLNjQJ1dlqmYJnxjgMauIgvCU+fFko
	 24mQkxxA/0ee+tAHovietaNu9Ae5Q9jS/IJ+3/nyYDUMgJalGgxzPitBB4/BygpWbp
	 uz/G3xv9K7HsTXNGm4lwv/XCJHvMQnrDmTQQGxA1U8JF8NiUdI8pDCVy6rQZlWuwBi
	 gMdoPRxQXTvvUSXZP5Swq2MTrRpWFRmviVoxv6S+js29Tg29VnxdtNnEq5Wc7x+3CY
	 dLi4rbVf0CRN7bxKLdukMfIZv9w+3UMRZ0ZlZaJxP4pWP8aiSwVDmtbvJBhFfCny/c
	 WEPfEXbKBFo9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B72C52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172438835363.20887.14433260176302192597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ee70a6adb310294f3c541998b5c387894cd6205ed36d887626e5b0755b796d
Date: Fri, 23 Aug 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724388353
