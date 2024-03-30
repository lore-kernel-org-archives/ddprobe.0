Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E470B1DFC6
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711832897; cv=none; b=FKZOhs3kwt3ihWDwMz5cxqSEQtmkRGtZlDacSwBtPphFj02bvllywwupw7pUuBCfexttLl2ACG4CIr/lqhEVbmBML1tTBbCsQVG8uFXBmj6KoIXf0nOqJmiqO18tS+1KcT140H1Gda1a+aBuPnpvh5mBzzo0YDnuEZ4OocO9Hos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711832897; c=relaxed/simple;
	bh=nc+87tajvXCLZCIksf9Wj/uzwUurHUAEzAyBwfMxwQ0=;
	h=To:Subject:From:Message-Id:Date; b=c+hWhK2gnIQMJdoUcgQjuQb03EN+r476IHXWYJSqY+Jd1CdZoFJFtOmhpeia0uDZAY3qMr660LH4ZO+zuCzH8GAY8/HbxV6MyDv04APzwbRAQWWgfGkvPxuJL6rIPzAgqubeK85xwjn2erPgqFC22dDJWr/HFYqt3Br1jickxGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZGa5hSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZGa5hSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F850C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711832896;
	bh=nc+87tajvXCLZCIksf9Wj/uzwUurHUAEzAyBwfMxwQ0=;
	h=To:Subject:From:Date:From;
	b=sZGa5hSYDIP8B151dxk+RkkjjDTtWOBjFQ9P2USHeKREjovlOme8TcMbur46UdKd1
	 FbDxLNzdL0qWoR1Z7kIPe/5jXz0TSpBSCGDvgdlw7gz4I7tMioO/aioiYdMwKiuyOy
	 fHhc+1FUz96j69islM4MUoSkzlZm2TFRbqEtTkeCrtIt3acSwwWovUyiT6WGpL2dAy
	 7bfkUKiukfamzrAv2dG+2c/RUKo7esqlO40jiYgtCufl8pa2C0Hg82yEaA7nHGJabM
	 mPA3a0Czjbna0ImXgWZwKi+QDW7j+inXRpJvvSKlslRngwTRfpkG+7Pefp1294oqtF
	 xDSMRg/AIR8gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 693DDC6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171183289638.27197.15887490100776468804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c27b3c7bcff764f0a000782d0a1f1f1f3356ba3db15a78878fffc93827bb36ad
Date: Sat, 30 Mar 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711832896
