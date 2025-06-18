Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5D027E04B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750282195; cv=none; b=SpodV9a4wHoFQZkKBNf7AW8hTkQrgYalRpe/Je93p/3o7xoq55Zy5Ko5EzW10sdD1irK1r7Tp0+MRroy/0uhaUUyGPVCbHjcTtE8FYzpfPnaI4U5onzZtZxPcM/0j+mCwFdPeWwJkcHwdMkdXDHqdZlx6F9/6o6UW7MS5pN4Dzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750282195; c=relaxed/simple;
	bh=otK3yYPxYxAyqHKIkqmj0YqqF1g6wSZldwInbhXw4HY=;
	h=To:Subject:From:Message-Id:Date; b=SGtoMINkpbwGOjOho75CuGqGSTJVlbhJ1VjAXfB8gm6Y3ZfqdW3EdJN+BhkJH2ZKnoL2yKdCtEBIlTFtLsmUgFEehMXz6D7FI2L1EOxqZunkr7piK10VSjq3ZYGvUZygOSndm5Rp5tCOIdocRJmrBS8Jx9tcmmhm7w5202iQ3wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJ8WkZst; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJ8WkZst"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DEAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750282193;
	bh=otK3yYPxYxAyqHKIkqmj0YqqF1g6wSZldwInbhXw4HY=;
	h=To:Subject:From:Date:From;
	b=kJ8WkZstX36BE7xkSfbpSLwuzKKDFyPcsBjdbx23p4j5dPwKbh7Kw3KHZD7AcF+1i
	 kMASplE7+BggIv6ML/8XF/Fpgnj10lTX0LLhRMM6P8QzimttVHPmi+uJ0cDWS+YYdb
	 53/3rZ18MU0ZxllzO9lE53taQ51YHCIA2MgRxRNAZ9RII/05X2D+IRPLBvOBdzEEGy
	 vuvsc/8mCsy56BflSPsNS5vX6tX4E1hy8zDTZl4jP7nhElydS4xfqZ/P4tz3Bpo+8x
	 hKmnuhL89o0kj4MSLtsF+2Fwgj3V2u6ZAB3Us5cQjh8d0khNGqGu3keUUvvkqsZNuI
	 L4My6JUkMo0Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9218EC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175028219358.17914.4950847569196511518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd6d71e34185932f14b129e17e906718739e83cd2f3979492c2ce3827629b9eb
Date: Wed, 18 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750282193
