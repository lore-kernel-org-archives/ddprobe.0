Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332B93B8D45
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765110174; cv=none; b=jlZdWEobKUJhdC13yOuoLlKHkiL4O4ZqcTh2jCZl3i71It35ZOHprnbim3DuhQOhHGghRZPAqJ3IV/dI4EboLjGK7ERTIV+gPxSNKzVW/tQ4pEkWcfiwxLxt0A5UpYRRF6FMcWe8YqNbI6Kh4hWPusmrmFnTQROrMW9t/G9VUeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765110174; c=relaxed/simple;
	bh=dKojZY/T542PRMo8pnJIYGnnox4tmggw9z74Nvi0/5A=;
	h=To:Subject:From:Message-Id:Date; b=Fn5JTSqaB16ftCdPzgoYGksWVpkQyUKY/B2qbhwwBqGpvwblrwbyNRq4IDAR24rySumfTi7n4JVqkQKscENTU7HzPbahyi/qm13GZ0CTXIep31re+hRTxXLEIGaFLxuJSBK1PE5eGnWVTdRpWE3pCcNd8+74gE6+nxOU4GzLXRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qb2p2DQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qb2p2DQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE528C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765110173;
	bh=dKojZY/T542PRMo8pnJIYGnnox4tmggw9z74Nvi0/5A=;
	h=To:Subject:From:Date:From;
	b=Qb2p2DQb+jFemUu5/B7gd7pqoXdoKz6Ek5JaQ/NUhUH+zNc7EtWdhtr00UNBtuUvc
	 islIKnumOCH8o87UvkNXOuKgB/Vn2pIooVm9TmUdGPxFKk1EO5JtgnokgXV+1iU1Lh
	 +oXU9kR/RrwrsjlPSOvacY5NdWNkZGrOPnVpbpOt5KFtjfd7lbjQnEOKQktln8QsOM
	 KmxrXv9ZQajScVPMNEBp1uSOl7kHn3SlTB20wCplcSSO6rAztBnocwRms8vw+MvDhD
	 3+ex1sBcyz3XdzRKDlbQbS3LuyaLgHOfQUr/djouZcAh0/IgT5oeX59Y+orGQeVGb4
	 Va1CkIjson0WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DEED2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176511017358.24513.3267757156510083784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e21564dd3f060283a83745612c139c48c2c740505580897ef06255367d0aa758
Date: Sun, 07 Dec 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765110173
