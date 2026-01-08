Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DFC23EA8D
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767888834; cv=none; b=RKxShBLVOpFm/klYv0f0BEB4W99bhvj1rsOh3IY8ALlVcedkCvkIGEpqxYwv4/O/7aOEJshyzfKMRK67UIabBG7sf56RZpJ2mfmXhfeb4x7GqB1VEmoJ1nFgr9ac3TqyvQdbV5PbczKYbXWqjh0mqMSkj0LA6ZBwh7JPJ6pfc/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767888834; c=relaxed/simple;
	bh=eDha+1vx8ZLL1LzOPD+JN7c+AXopRMjnFWwD7bvY58g=;
	h=To:Subject:From:Message-Id:Date; b=dSolcFVQLcg4/qT0TBJHKh531KuUm4jUCVp5W1D59jTmDuPnA5nyTRf00vDR1rsGryGYAp2JQ/G1asxHuFcs76KKHJJBVkw5p/GhH9nTSFo6bMC2zcRRll6TCSBLxyDX1AismoKiPO9C6lLMQ9skI5nhzXbvJ/txJ62ZYOwpKik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Noe2haw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Noe2haw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE0EC16AAE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767888833;
	bh=eDha+1vx8ZLL1LzOPD+JN7c+AXopRMjnFWwD7bvY58g=;
	h=To:Subject:From:Date:From;
	b=Noe2haw+V+uy09ZY4iqPqgEtlIvSvxRAfWTFNzwLXz7TK2EW8mJNgK0aci4L+4Qfk
	 ccI5cb95QSnKfrMh1x2Wg0NTM7ZSPpQ8QJTyOVsQbpMeOPSiruFvo57l+Ee9+/2BbI
	 sc6QfwgdBWHMdnkqRMQSKqWT0t1SeM1HOM9e2MylH1qEjr1p7k4SUn7A6VnJRZd+Lm
	 pPq9/6rzYLjkTRZIPJaZPloC96bQgzUrdYzm7Q0LGPAwxH4dRxtn5nSEBOxd3cUyXh
	 fEmN1bT9hXvzF75pOu0Dqnp6vJSreqPjt6EiGATFl4Mt3HZPBv8HICEjJnDK4Msyv5
	 1KYKmbjt/wnnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC1FD1D480
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176788883357.30649.5852211466055835348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b0f80a07a08f92bd3248a480e932faeea2b829c9728515c6ab2cedac5303f66
Date: Thu, 08 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767888833
