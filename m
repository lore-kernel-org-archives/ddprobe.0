Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4398B35E95F
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773227694; cv=none; b=nWB7oZhbWLzLiyQati91nv3DA436wTcrZ0pq+hftLgUtjLm05xo7dta6v/G/zFzZQYUTnf7zIWG6UcWoVXctQj1O2wHnwsmnih4gwmakw+OgW4LmxhtJFByOPCBmdNaod/mJ1hzl65bwa6zBcSBuFJplyl0JnWQK4iePUgKtuIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773227694; c=relaxed/simple;
	bh=lS6Gqil3RNKYaBPi+Gn8aVj6N9xqboIRU8jGutTWofE=;
	h=To:Subject:From:Message-Id:Date; b=er7H/W9JlhP1bPW6/8zB05uZxzBRVP7S+DNHzY4544Zqjt12zVauVjdbtMutRkb7/DSZyDgZudNES2FwB/HkEhhov2mWRX0M7TkO0nbc3vucf3WTQ/l392tW4bfMGLFQpu/HFgp0fBEk0rMO5fG7el2TgzgB2IM9/IOXH4frIJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aABqdGQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aABqdGQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73CFC2BC86
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773227693;
	bh=lS6Gqil3RNKYaBPi+Gn8aVj6N9xqboIRU8jGutTWofE=;
	h=To:Subject:From:Date:From;
	b=aABqdGQlAAdZ82aPcHXuNOkXTNyLSRuPPsCxBrtKuXUC2i9XBv5JIm413x4yyLtBV
	 3fryZtoXOJFPNlHjIXh5kboFCxACaCykgk4PifxOTqRvyeT4CY62YjCX09W/n/+Vtw
	 Dby/8WDDApvxLWd6D9/TsU2fJe7p+m2oo8aU+qg7XiAyOzq+QedH4eu1dOd7NZxO5n
	 JIQL7tlSI3LCFGkuqVielGSGzyfgEco2Cq/2SPM7P2/+Oknmcsi3RhQg++OrfEcV4y
	 C2CTNfcBgYm02Cxj9wQVALo0WT1hFvvOkz8bUHWFCol6ESFdwyqQ8Ux7G/aZODEyC1
	 /Q2I79M0bxb7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901FD1062862
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177322769358.25422.17582633330082881237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 574678b1586e08d09716fb95c0b8cb829fdb392fb5b0eb9ad36d915aaa4060bf
Date: Wed, 11 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773227693
