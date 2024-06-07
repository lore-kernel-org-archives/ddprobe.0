Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F03244377
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 10:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717755443; cv=none; b=q185uYrpr/ce5/4dO5ELBaUpza0ZY8CWQidPGyMPEdAblFpIvdTXQjfwZCtT4bQXo64BLMxnr7YXHms6FLYhcL2jdP4/Hr+th3Fya4WVtOS1JWRHLb1y5yt0cNvFZF5zfbICMSt0pP2C2/A/PO+zg7X2o/QDfym8OfbWRyB4H7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717755443; c=relaxed/simple;
	bh=FQOLhuYcnDVI5hG3R5MW3nGLh2nR/qMgGlUccgBVJsM=;
	h=To:Subject:From:Message-Id:Date; b=SDd+zDLttFp5jRz4rqinuA2hyimXJHf4e4JM7ZZTKYBBPAJfW8gHeobr7rSqfFD2LV+e/SDcguoD1MV7WPSENWw+kthjRNtHv2C3ggal//O315s2+5XyieqN7PYKFDKWwXsq+eaP113utQvsdVYDq3kP21ZV3m4GoRWz6gA1pBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G86SaBeI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G86SaBeI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9CB5C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 10:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717755442;
	bh=FQOLhuYcnDVI5hG3R5MW3nGLh2nR/qMgGlUccgBVJsM=;
	h=To:Subject:From:Date:From;
	b=G86SaBeIbQ+Nd0sq7G86ZHm7iZ6J6mWXw+s9bLkjrG+xK/eDK3DU/PduXiHNj5u/j
	 5a7jv+A2WK8T9DAdIKH6SDNoTMAaZsyKuLUf/35sm/l/idrBXSclAeHRrh9T00HsaS
	 qSqoQjgqZnYIlJoIVZA4k9g4Nx+YEFeFyS4rSJxe9j9LgMO+UcKTsoS1/QqaJ76Ddb
	 IZI6XbDRy0xC99X80Zj4o255xEZvx7UcL0cPXjdRU1m999M+QbupuqjedtBSA/S8Hj
	 rAc5IM/ta9t/fp8Md09IoWplHapOkhsD3tsv0a8Z7NZHrrlzly0WT36ANGg5FwO7+x
	 oHpJp1z9LWkSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFEC0C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 10:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171775544279.7094.6801304581715958515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de8ba87469ff7eb0c207745cdb1896107ca43e59a96a1ee1011cd745b2dae6ad
Date: Fri, 07 Jun 2024 10:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717755442
