Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C9733FE06
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771513494; cv=none; b=iD7/nVjdatvgwMwKKq25zgWgkHa/ixRZXmRJUb1wIGOPND8T1f8PzZgAO7FM6f9hI89bAEuvJNKYxA3D3vOJ+pmn4yyKut29hzDkV6XQt3Zs+2wGjfepqy+zAanpAQLvrXUL0wbYR0B1ToLlJMWA/GIPQYh0UYeycUCccuxCNro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771513494; c=relaxed/simple;
	bh=Fg6Ga6IdQhWHIeqsU74aBoK4ZsW0X1ppuW/PJ4LYBR4=;
	h=To:Subject:From:Message-Id:Date; b=tnwj9JnGeLkFPxwuL+UYwpNmUgtpEGAe8wsvlwB5Aqbja35/wSBZsBxhUHv8YTWZEsiRHxnvr8yr0y9mu5VYfK31Pb5KSJNcC/iq//YcK0mTB0u/FtuIoN9wU04sEI1cEv3Wl0ChVZAmkD+2SGOilJI+EqbOmPD0aGVvQ66YV8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMnKkmbk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMnKkmbk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2EEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771513493;
	bh=Fg6Ga6IdQhWHIeqsU74aBoK4ZsW0X1ppuW/PJ4LYBR4=;
	h=To:Subject:From:Date:From;
	b=uMnKkmbkZXnXNXmS1zsFxXJWr60nuT1UL/j3AtNz6X0YGdhqiOqanXJ7YWiD7LJnr
	 MUWfjI1Y78YQ5KvTnH51y4X9ZZmeKmY0AvI0KrwJ7WGRl5CV/VDHaYkstB6yyrKKoq
	 67kNFhaWwIcmtdqmJ7w6xto+Dzxkw1sK192Ohs2Yi5J3uyAWzVpotkynMWSIc8jRrk
	 H3mCMl7fPHocYYkLJZjU33goXEN6YHZkiER+8DEBkveloUKt5lctt0hGu0TpFhMHaZ
	 EBWSSDgt6WIFdbS8qQXAXR/ThOuJw2emDTQzJVTY1yuJCxewjeiQhD5/nbyCFeT9Te
	 pdxgjJg5Fe+jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D20BE9A04A
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177151349363.953.14991910624839524714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 128a39a4fd5307cc83a21348a5df818c798be7ffb8f28f5ab5b7c6f36d147fda
Date: Thu, 19 Feb 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771513493
