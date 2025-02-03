Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5772110FD
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738542354; cv=none; b=FDuqNgGCgueHfbHxB7j3jvkfa6IzUeWwrTCukX1dQuJ8rDeNjIQlnK5A8QZeE9Dp6jsalsEEoN1/99Z052B2llbeTXZeWygzA7qcGN0KmKaRWv2BU4WbDgnw1eTSyJJuZXHJJekw43uTLjmXn1d90kZ4aPxTghbtsbli5MK8Epk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738542354; c=relaxed/simple;
	bh=sLMZ86VkDVsT/wSSOgedFISFaZf93+jyhfFWyjJCIls=;
	h=To:Subject:From:Message-Id:Date; b=ImO4cB8WwlGYerKA3CqQ29KGFiA1FDbhJeEGwCEc3OCqLd2cXIBo4urlJxBqRkxC1xOsycxGR9DMkxu1lPYkBzg9KO5ExIPrQ9G3uIVet/AX4lpooi2qXIoujVMqk9EiJjuk0L00wYy0eL71Z1bEbewMTT7pRlxF4c9klmg7tqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1eFKN3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1eFKN3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FE2C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738542353;
	bh=sLMZ86VkDVsT/wSSOgedFISFaZf93+jyhfFWyjJCIls=;
	h=To:Subject:From:Date:From;
	b=b1eFKN3Xq3hSuIHkqbpGBeEzX81bbJZOfuqlxS4IxhIIwQpV3WlYoEzLN+uIe5BpB
	 qk1qKc/TXsjlyx9C82kN6sTXNaUnImJ8H+LrkKsU8py+X1GjdWvKmm5vqc4wYI5U7n
	 KjmYCM2na+e0OoY/0xNrqEopbqgzypg99h1nPzLF0KhDcVnNw/1GqeGU3tpfRuJf2t
	 4aOpAYHT8Qm1F6dPYXE6Qm34HmSsIGOQlzg6EUjHaBEO1Br9VCnmDtPGUevIFiK8am
	 w7iC3QhzrXTOfMAL7xxPBBXHHTESVXr/DVaemiglWJr9JUq3KVi6XDm8JLz83Hqara
	 vuux+zO6Bc3xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1847C0218F
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173854235362.960.4995812586323199034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f56911044f5f597a2982b645abec7384491c4083d15d14ba0e4c4f925581e5b5
Date: Mon, 03 Feb 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738542353
