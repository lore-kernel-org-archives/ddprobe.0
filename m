Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BDB2F5A0E
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786594234; cv=none; b=gIXl8vfFQKoC88K3uPBZ4eSp0P2VLMhEOHBuVLxDT3zmw/t3j9hAPZtb9Tbv1M/KudzkTWx46GoIJsCyWa4+/IXUQkMInlu6Yxo2d+bYHPdmNShtNOrkvCm1kfjwY5Ykhb+4R389xQ6iYAWTWY0uQxG6eSvwhDCX5wEt98PlL0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786594234; c=relaxed/simple;
	bh=QjtwjnCCrBj7Za6N2UvOW0xxrY0rgNovFB12F4NEM/s=;
	h=To:Subject:From:Message-Id:Date; b=dP1sSciPnIJwG5aSEx3nYfx8t8yWHTIM0AZTYcDOLbQtVbdRvZ7rFWL6J6ik0ZM6zYfmO+VePCX0KMfsIErTGO+o1fFQ8atAFfvHK0AoXwhJcUKrgh2NCaN/3oE8ltEXHner9BqzzzLbqyeD86A5Igy8QB+C5uI0L/y+LVKZsLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIbV4chc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIbV4chc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13E3C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786594233;
	bh=QjtwjnCCrBj7Za6N2UvOW0xxrY0rgNovFB12F4NEM/s=;
	h=To:Subject:From:Date:From;
	b=nIbV4chcN1ILbUhpP9i0xoIHX9arVR6ZF8bTbbrLCC7I1XKjLNKNk5A3AoB9rQxMo
	 6Ml40DP/pKfOQVQPADvG4jlifQxgngkywSadZIofM1v3wlYdkJyk+Qifh6JvNlyph4
	 35dSBYsBeo8XomNDHGnOGJDV0DEg7Krz20t9ZPVN0VwFOe2O2yCEnF+F4G8Hl8DAI+
	 4bNIialTAKR7xQT7kLobAHT17HH2FMd8MLAHuy5PWqKs5gzhNwyZa+ZsxIy5USeEeO
	 /WjOOBlvvVk1Z2PCYol8GAJuuf2gKflTsQs8pniP48Tg7tJ9ukL/Sf92zXSiOxgfr5
	 PVTJ/YHvtulrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2CBC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178659423369.21721.12503446248419769041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d73b2b24bed87d63259610371a17aa2e31e48a5424ee48843248e3666a1452
Date: Thu, 13 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786594233
