Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F5135DA52
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778228854; cv=none; b=Lktm042adnnopWcRc59AAcxX+R43f80C0e1vB1r4K3BveGKbJi72GJa3gsfkWRBg+UbZhuJ5mOkQj9QFxU+TCYWJmvjXnWSq442pEO56WW7AF1Q4aAmzHeH5eZro5ILGOFZkLqzmNxuy0NR2Yfe+iRtgYQxjyYtFcHvO/8iV+5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778228854; c=relaxed/simple;
	bh=ZwUY4Oq3Lbka4WPL4wGmoBhETmjdLiO8tTiL9mp5uvM=;
	h=To:Subject:From:Message-Id:Date; b=ZN5divoHiwze7ovHTOwBzuafncXgNDazUneyPp50M+lOBA8AwEF4NoeR8XJtc0Bge9YiW4/JWaWK/dPLaDak0xQp/8jNc4w+0a8dksqpW83cL8GJSEhDQ7ZZLm2u2yiqNF0Dq5AcMk0axpDfqKkjCQTz7I9vkZBRMWRqSw6P6vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOLnoSCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOLnoSCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF340C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778228853;
	bh=ZwUY4Oq3Lbka4WPL4wGmoBhETmjdLiO8tTiL9mp5uvM=;
	h=To:Subject:From:Date:From;
	b=AOLnoSCgx0i3MSMCG1R4JqY7VcEaipvlzXZAZdrbxOV+QYLg0PQry8ZW4XkmK0lV6
	 rKE1MOv7/Pm9rwqoxreUFqmABG9kAt3cbqGIJJVoWWa2TPnUKxiwNaOb5PdnOy9l2q
	 5zr8l9bzXaKugwFoXvhMde2AVkrBomlycZthEOG3cMBHPzMab+IwIO8prOKcnmsABE
	 0LLdvNsmHCHDnH1VIjn43AaJwbaXcAIacAZ1VaDXqmPtKchn+EhXVLBwb4gX6vBm0+
	 np2L3J7DRN+9zUv9yWyYidvB/ZVSlnYPWqytUUUbpjF8L/E1qQxnFkRP6yr9jmDcKg
	 DY+x6ncOWziQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8DACD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177822885369.15677.16063072702982469668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fd08cde3aeccdb970746b39d023e247ba6d9101358f254bcf0e8cf8d5467fb7
Date: Fri, 08 May 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778228853
