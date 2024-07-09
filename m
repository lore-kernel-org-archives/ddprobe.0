Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57221155346
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 09:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720517783; cv=none; b=OJlY/ZwFaiHxkeZWFjedc5G+buN9sPpKnz47h1AI+TdlK9T5tgDkag2n+vqsU6Ojy72Kwf4S/pLm2RTtykatFwURbMwD3LSTUc6VWN2UOWYwmSCg2PnOWsxyT6UIW+MIXlgYR/7pwCG0Q5Pi+8i8DsPJmJ/xGU9qlQy/OYmnUCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720517783; c=relaxed/simple;
	bh=WNrkJzLEizg+S59WOvQEHVJzWJwexNkFL4c76CcNFL4=;
	h=To:Subject:From:Message-Id:Date; b=fFq0ssTF8NTowCuP+yvsiP7MnXazwQyAW3qJ46DusnvDZ544PhrVwxR0uE64fC24j/azsWzDEjOMUQCEPAB2sVeiY5Ekrw1O4o4M7eo5218+Iw9h0Lw2Ee3R3rBIVpnL66Kxs5qq8uWKpuy1wOFieqJerwf8mNfz5soE8vuC1mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMbVuWYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMbVuWYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2769C32786
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 09:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720517782;
	bh=WNrkJzLEizg+S59WOvQEHVJzWJwexNkFL4c76CcNFL4=;
	h=To:Subject:From:Date:From;
	b=bMbVuWYm8WvQC0pp8KiatErXTcFXs1OzsTCk4sART46trWXnmHxU8Uq+UOXO2HvfO
	 msrZnX3NhJgvPHja5uoBaO+TmobGc+NwHsV2Hd27noR7Wzy5u3PvBYY1CMZ3UoJPMC
	 qfH1LyvNbOe9oaNeX7/xBpGJ2bTBchV1Iqw/FbroVWGiq6QbvaUp5zssw5r2LDFjwD
	 htp53v2py/CjyEefqviKJAunBViOqUo28qwZLWXqrqeWFjyKE1c0HaIrLsOwIywEC4
	 t9uX6sxpMewBjlf6a9N/xGwqOfoquXTARR0F/HWs50zm/3O0Kl+JPPg8ilYdyR541j
	 MsVzqZkzPgI8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2FEC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 09:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172051778277.15482.5822623569934806854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd2c9612c327c3382828cb86f67556ed344917411e203524c35a2578d0a8821
Date: Tue, 09 Jul 2024 09:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720517782
