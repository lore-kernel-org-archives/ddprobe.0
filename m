Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526801A0BF3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787194834; cv=none; b=nmypoLjD71IGSPJDSe5o+dpEnO7/X8X9H9ZW3lM0bfSMlj/5GKuHhuL6C2KGy/IiWCD8bJdncVAyLHgFQWRj4wvoAn2zNB/E671PuUOPb88xlhmd4cr1hURq6zOJ4wFZD/5dvW21weEiWzKyGQmeJ1JDDEg1qrxyJvVuR6tJL1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787194834; c=relaxed/simple;
	bh=hRXE0TR+ce9kfOl31/VpjzAa5sj1yClhS0sCx4i0RVs=;
	h=To:Subject:From:Message-Id:Date; b=OcAF9pVrsBPPYKmIVnwE+J2HAIN1fLjMyIamTcwFC87XkJ+E8tNyOrLPmM+aIR7U+NNG2NoGU7zWk4s8UBUTnXNXg87SdVxP/D6mY57qSzwwbqCmvjup5rCiYeKfIHruAYWridg/KXbXEGs6LoA9fIB+dX5CSnRS3GSBEukU6GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BH2Ize2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BH2Ize2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DA8C19425
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787194833;
	bh=hRXE0TR+ce9kfOl31/VpjzAa5sj1yClhS0sCx4i0RVs=;
	h=To:Subject:From:Date:From;
	b=BH2Ize2BglIemmMlJdFmaFWEMvWz8hI0UJpodrxp5P8uWTRZkrS4R9zMkfslJH2/g
	 RLzpSoe9JzrYQ8pcevEwBh+zCcL7WDu8kNI8NUiF21YQo01ZJiA1MI4O7/F9ftQ+bb
	 ppRjCzk5g7oKQVRIBg2kpoy2KZuLiVo0vfm2ex/TdirioCgng726VXsjJ/3pWRa7qv
	 Hw/5MfC2RhyaNAobBpTS+V+JsCCx2Bvw6Jqo9P+C968ptjWsJr1qAh9+BuVWouIGdZ
	 P5i82zpiuzw4A+1pXfAhVglPBPfGUdtYgvnSDvN9nhBK3PlMfQIj93ZTSNPlmswSFz
	 rGij9rY2S67eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD47C5B572
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178719483369.14432.4062821433527450138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3d5ec4f4c090635acf863fec96c98549de135c13084117de56deacabca819ad
Date: Thu, 20 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787194833
