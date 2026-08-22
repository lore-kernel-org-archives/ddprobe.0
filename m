Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499CE3749EA
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787376634; cv=none; b=LY4+BqqrVPAM6SCRzmIRlbXeqWJn8Q043YB7O7OJBe3UJ21Eqrt2hP81LFBVupvOIH9mzrXIWLN4/EDehl48tux5yhsdCCcdIEK9efyMJam6ksaj7hkczC6Q0utSRJQy5jfZGgn9uYOXS05K+cdWsbeEZd4NIP/mHc5jFI9dN1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787376634; c=relaxed/simple;
	bh=jgbwItdFaTDk6zhTYNTzT8DcRF/gWvTXAb0iIeQ5FlY=;
	h=To:Subject:From:Message-Id:Date; b=HfLvx+LCbIuld1quaQReX0v16nDfdnl7k1s14a146PmDVyvF4n5bd3vDKkfWo/SN98+pCX2MQZKK5URiPYEsKr/YQoe/11gTsU4tib2WB4/IqrMedJcDaUjNguA/V4SCJY4kzWcgRoCb2nXvnq1e9+n/SGTYKEvEnD4Pq5SOfOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dz330Bjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dz330Bjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F71C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787376633;
	bh=jgbwItdFaTDk6zhTYNTzT8DcRF/gWvTXAb0iIeQ5FlY=;
	h=To:Subject:From:Date:From;
	b=Dz330BjzM+OF58iNxuWI8acHIaL/l3ISX/zW0SWJy9NYI4dO1aKCBmcgJ61UrrMqU
	 p6KgpkVx5lOspO2403eqEtydBAa5RlhIW6WsdMhc9wk6vU0l5txKVYOZg1+/CC2aF1
	 i8osMYk9R32cU4AAqnAAZG0LXNaHDraAbUjrR0SYceEnLguWcsd6OAHG3CFuSLRDYK
	 qXSuoof+/72aU4fZ6E9rHlyApip69lZsnkDjVNNxnTHSpCAmK+MA6U78o8cEK8mxP/
	 bjGwk3ykqHtKrF3JpeA8cvD0dzHbCp9s9L/6Rbavn3F4j8k8IO51wuQfVsi4ZpKnTF
	 YWhTfpnDwy4KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3384C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178737663369.23726.6844407168225700332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41905e88604a1ca5a342a0b63416e20f6082ca1ae1f929a6160154c24a971999
Date: Sat, 22 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787376633
