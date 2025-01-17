Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A281F76D6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737105953; cv=none; b=ihYdPXyEJGeAUyv3epXK5Bgp1u4EAQTjJaaUbAwK61Nx35i+N+tjEQIzjEl8Eqnb35CMS1SSnfiYZKbMdBqtI7QVwBuGn9ybnIFYDUaxPEcsjbSnr8CZNR1bOCIH21A4XvYWGrhNA7T/loQx3WH02j6OfOJOxRWgxMK3pubNxQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737105953; c=relaxed/simple;
	bh=mDadWz87C79RhR6ycgH98qGheTkOneTQvVCM/a3ZJqs=;
	h=To:Subject:From:Message-Id:Date; b=o2EHSJUTINjfLfEBLbLevAooXfzuiklWAoemQCnG1iWGE7E4rdLj6BFItS7rIBBY+42R0Tq9EMOMgO94dVr0jZ0lmCqhz3UEfq4j30dV6UUWYas5hOjnat+8XIi73P0AJ1LVTcy/8RX/GB4k1q2TGrYqHZ8jBPmXgpVJhU0Ub60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWiLCP2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWiLCP2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C6DC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737105953;
	bh=mDadWz87C79RhR6ycgH98qGheTkOneTQvVCM/a3ZJqs=;
	h=To:Subject:From:Date:From;
	b=rWiLCP2t3V3Pns3+6ZMn5dMNMrvUkafa2e5WJSkpFfcd2sTg7kgxq0QxfJNAyWbcE
	 dMkirPQELrEX74PiTlDNnv5eTlG4vtwtHpwTgs4STca/dPaR8cFPfkINyq2WkibPQw
	 V/kWIySvS7c6dfDrvhflAOcKZ8lFGQVHDdxsRulExjK5YnO4aol4qVRiuFLz77ETR5
	 YmzmrOfmJc8VtV4ID0k7FaMXPb9rMPsfJ9b4yZbpwHHlknIUNMT9lXMDJ0sFdQkhlL
	 D5t5jKJuPjF+11KV3pTgeUxnvfwvsmlD37qnLZQYLN81MBlFqU+Pu7l3FszUPK6EuB
	 3W6Av+CO2vCJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9003CC02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173710595358.14258.9138552227904858356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 637ab92326bf069345a599df732f1fdcbafb9387db8a2520d628c5d28c79ba68
Date: Fri, 17 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737105953
