Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E471802DC
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 14:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721225723; cv=none; b=n3UrgfM4GEow7VrecEZ61u55OV+nQzrl4M5iPbrTigMUWifqt63aX3rKlOBqVwn10JUcxuaZZOykF02WW1307A+NRCwz0pl/Mo4oyYTcuCg9Wv3KjVcYJYlSMnhYMRHzDmIudNt51ejD68tDNggJ/tlIcX4ECh/vPDJI9VyiQK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721225723; c=relaxed/simple;
	bh=UDvVP9V2ZBTmsF9u756hY0ckuqOC0jEdwj+2MiA0XDU=;
	h=To:Subject:From:Message-Id:Date; b=ZuwBeqAlBryhQsGfgU8OlyHZyyXx/p4o1lR9DtcEbHIlGGww3DwtdOeubTTUEgCm8HG16aZE0CLGnsGLBcxhLvzh6y8I0VCJB1t8m5O2fn0BdNq/sNOD+TCGi1C3czfDEK4Tv20YIOc1UUMXiPUxvtWFEVukeB/O8Q0T+0B+Ol4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W75rLbLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W75rLbLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E279CC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 14:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721225722;
	bh=UDvVP9V2ZBTmsF9u756hY0ckuqOC0jEdwj+2MiA0XDU=;
	h=To:Subject:From:Date:From;
	b=W75rLbLrGRbfMyGnk1sNsAtI5btQv0WL3hexlCa5BHhrXi/GyT/52dImxfMAA4ca1
	 nJ1MmYvho35uQugBmOFEzyqBZUdoiVm+61eJ8JWixbdvB/2lBqjD/oes8dEBb5MCsP
	 F/YKNnx2aejgZNFHblhfGRh5hHs96YsXdCviLrbqJ2ooHqD/xsdcREtGNCaOcYxGLn
	 XNAHTOjE5pmv1712D3+wJRKmhb7EIlffrVyjS0BwPlMa+o+jaHbAWFqxXlB1e6+FOo
	 TNmdSHwxMTpM2oErOU7hkovY8vGeV5JW8tvYJfvb4yI33pOgkCuQ1u0mfftSmHF0uX
	 7Mj7jGXGtzPaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD9B3C3DA4B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 14:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172122572283.2613.3731883911621311258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 291287e2e7595ff1fc7ebac0a7d61dde565566d7b1e169df775f4b8594646c29
Date: Wed, 17 Jul 2024 14:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721225722
