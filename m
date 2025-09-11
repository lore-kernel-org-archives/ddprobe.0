Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F2F30BF7B
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757594395; cv=none; b=Uk1EgTNAQbGOuke6PBkfsrYwldcEup3/VUjWHPAh6jPSRlWi3/Gni0YkPfgrDb7n2JL+Ut7/xAA7BzyaB+ZWOwGGfg6Rqopxe/qTAtx8tMLXqtJWJ0ceyREnj/Jll8VQyfPMcT7frqTHii2cdIrbUTLQ+97HaWoi0g5ei1SUsGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757594395; c=relaxed/simple;
	bh=W6E1y6CAGcCrmuRX4bkmG0QmjhSiLvXqasYwMZutM+g=;
	h=To:Subject:From:Message-Id:Date; b=cVu+N2Z3gK3zUGn59ZcyRog5RjyiGWUvB/XkddQvurTifpQFcbbSRrr6IJn4DB1kQEfyaoEa3fUYW51xUX1p6rKUVJuE94frrLlJc0iDYF3OwjeUpDRGmvsO2imG5MvKdqPlkgN1x91YFxrnWOhweWmzxCkmcPQAkbfg+8CQRUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFVcwj/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFVcwj/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3862C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757594393;
	bh=W6E1y6CAGcCrmuRX4bkmG0QmjhSiLvXqasYwMZutM+g=;
	h=To:Subject:From:Date:From;
	b=rFVcwj/3BRSCeH0htijCTbwr2WfCVbGcu3a7EeDR4tDDWb5Zq5JdyAM6qUcXOOFud
	 rdcejM1R79Oh5bvW2suycgkms3IJy36MgdT6xYCSjATbSMzA2n1UjE8VkK39CsWi1G
	 S/JehZoUvzY6HJpRpEeqdh2eT6tJjZBiudXErIOnsyspkuvLw1UexBP5FgzMrnqmkZ
	 r3h/Tuw/8ZQ325N8Q9Nj8AaMtt1N2NajAoSkk/+d1kgTYc/J9AZvLWKl7xlFtMhtYG
	 A8Wgc6ylFm1dEWc0qKjnBDn79dMCvUiDWLX7apk1DVgVmI0zMgPKSXJhI2C7LnSfzZ
	 Q4/yMv10Efy8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E9CCAC58D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175759439358.21650.1405056317504798855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcaae3693efb795bd9244a6ed2fd450996e881022291c7b199b6e33498163d27
Date: Thu, 11 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757594393
