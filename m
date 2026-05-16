Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2685EC8CE
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 12:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778934634; cv=none; b=L7sh5SY35JaLwtRNEa/s/9Vh51HmvqLT4eOMTjHvbC+3PK61Q0nazKYf4zJwoPrSqZyf+d3TsvpOZ3jZYi9V3wQDSn0GXgIxtFfbfEEscfnJmaNzaAz3s2Iq7qbSkMcqVauiOgYT8APzu9xgXdgi9SQRGwvrVTI7RPzNX8EsgM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778934634; c=relaxed/simple;
	bh=7udeq4kQ5p2mfXKMTiaiCIklId+f+1zHCKVXhv1TgL4=;
	h=To:Subject:From:Message-Id:Date; b=opdWAR1V2GNmM1ukYAu5Kq2kXtQUZKmo1IpdDJnLCCKBQqzH5JJ9eaypp/3dZmL1zS1BjuER0/V9KQJa6CaUnWw06Tjcw3VwzY1z3pRbqjleNyDwqwkEHFA6QpaOEbzSxagsVEDToDdmV/rd2v1ZP9rRReajmFPH96n7MNwV2rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBUUCFQw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBUUCFQw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB06EC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778934633;
	bh=7udeq4kQ5p2mfXKMTiaiCIklId+f+1zHCKVXhv1TgL4=;
	h=To:Subject:From:Date:From;
	b=kBUUCFQwde/rzCarkPj6JOgcJtd011sHRA63OeDGU9A3MhdSNV0dk1TXdDBVuVlgh
	 tuPHIFG5Xl8rw39x1e9T2E/z2/AXYT3guMl6FttW0OgROe7S0AEJKFUmqySe/rHa4y
	 b504bNq6WpLRNUoYgMUHdd7N2KrPFOAWFV0ieYb+4uMk6MRWdUyJlRUh6m/UlyJQ6q
	 e360da9Cc2aY3GT6Q71YxNiEE51/4/Ulo4ObUg3h1LiUQtyv1EcNkw9QqlyI9TsPVn
	 R+drSq4J4/UKnUDUKUyOl7c6UXFUUdq1nHW1B3oUWphKfaemBKOewm8fYVdMuu5JuG
	 GGjrLKG2vruog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD36CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177893463369.4554.9981625703203444202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0d46e80ae08bee8fa9224a2cf7e2d8fa588ae04b82bd89adfcd16d63a67514
Date: Sat, 16 May 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778934633
