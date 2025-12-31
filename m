Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5291A239A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767212634; cv=none; b=pl7dpUSzHVzbA97XeFIWcWpgwJeJyYE9j2b0jcuQkprxvs5bfyrQkKSaI0cgLh380+B8zQb60k34v63vuf3G7TKFkXv1gA0IDNRhHFmZAg1MX1Hpjh1I4plhPdpFoi1xzb3i0ZjgokFKapj7P5apqpuLwv4X9vOmQYzddLkKJdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767212634; c=relaxed/simple;
	bh=33u8HVQpUAWF2C6O1Cau7erXZWKBcJw/J/kMFXQTvJc=;
	h=To:Subject:From:Message-Id:Date; b=E78EcEORE6jPePMMf7TcrMVlB/rDsJmvY4QuLZcAwzSUYt9InNgteqGkuktYKDEoaLz7u4s2hA7+NMBm2kjSbHcdfEqjg+cpHjMF6h6Idwq5AlyZyHrF2UWTkJUA2i924yrGfgf/BefelGARNQzu3IgBwufJmHpciTekidQsCIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oat4aQ5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oat4aQ5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A7DC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767212633;
	bh=33u8HVQpUAWF2C6O1Cau7erXZWKBcJw/J/kMFXQTvJc=;
	h=To:Subject:From:Date:From;
	b=Oat4aQ5a0ZWvXPtlkdqNOqthIHsipXQFp5sLCAdZzo7xE6JhwtJogyPptwd0wUXO2
	 Hk66JC5WZRpxZUnZCTBacXjiWEJ8GDwTbzXYMpbv8pg/ZANCOJUm86a3uZvC52eMVj
	 2p8ZfugxJ53UkR5tkmyHAT8HyaUJOTElZ2kr7egXxp3ZDC1pZtUZ0EOJoIvBz9VJr3
	 WomP4VFdAKKbybqY9F9xakcyir+/f0LkpSubcEn90l3dJ4DbMkVXtJEii6zuekTIKq
	 edLTTRbsrE2NiZypDmwUiFmmWo4asmtG6enwRTiEYDscFvRee6CaEjmHTsl8ogwUjo
	 wU1ymB4k2JCXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A25EE57C5
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176721263358.10136.10169374384605311674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b74f694589edd21b2a8cb2561601804caf1953e1cb92b85573ebf99bd03ce7b8
Date: Wed, 31 Dec 2025 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767212633
