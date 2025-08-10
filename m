Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B721E32B9
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754812794; cv=none; b=ABl95QzQSGcEkRVp73fdu77KiSJ4r99SIqCoea/nyZRdtUF6RRkO1BOqBCFJDViushXUUwlUjdnuPEUyWkxu2fD+CQqndPZHql/66QJxdZnUh4QizUeZxgRSMmDDZjQX7zT/8ykp9YUJeGFwBCG9ZLAxDYrxjesGeh2L5qkMTyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754812794; c=relaxed/simple;
	bh=fQruYkoJZ8t6KVwVFdMGV4ino7DDq7+oLFkMKP9CUso=;
	h=To:Subject:From:Message-Id:Date; b=hgmU4U67CWSRq0yntcD2sMSeJszhOspS8e7/cDl8M3GzOJauyAYVOGdhZM2BDTWVBvHO+c4fCCDX1DdpT/QJkRfbPjGtqfOb4OFE42sYm3/S+es5cpZp0vI/FqDh+ujiRK9kSd75lhWBhCFgsgWa1X+mxF2AI8qs1WZcL3AlyEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXtj6MEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXtj6MEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF19C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754812793;
	bh=fQruYkoJZ8t6KVwVFdMGV4ino7DDq7+oLFkMKP9CUso=;
	h=To:Subject:From:Date:From;
	b=ZXtj6MEgNbYCgDtkat4Ze2YaZVhvIFYP7KxarjQdeipy1/Xn0P5SszP5872NrPOge
	 n4MZapt1/kLzbIRzW4Hq2tX1Vc8DI6Xiz0TVudKkc2r9kqPxnpUnbR99VTybq0j9Hc
	 k9bvhq8j9WXJ5UWu72rpjb6TAAzfNo9pHM2LgNL2+mqjmrxXfwXIfiKkhBl92WUG7F
	 Mh73toZwfriA0G8/yq11kBqI9Lf5jG++KIW0OdnBK1Okv6SHvU41iEN6WajFMg412X
	 AZVp1p7+KYVjaOp07dpNqD8xQnYSDbwK4KVLL7m/GHGXlVObVZ5y4tZtdRv8Dfr6XU
	 MaEwM8M8dbB4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F85FC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175481279357.12582.11158371312698066597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61c9a4c1fd6b0541ceb2b9246e331507500556ccf869cc8194ff27042477cba2
Date: Sun, 10 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754812793
