Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BEEA22301
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782443854; cv=none; b=UsCEtVvJC8nh040ZIP5fmxDJwJnGkvBpTXC1MXWDvKGfiz/2pfO79eZdHFZffYKisSM0SefJOo3mZvG9BuadF/il0IxSsGZovdbcoc3z0nJxkI1bmH/QjOOpld9dAW7/0s/VqSqi0DPvY4j2ZsjjUe7tRMVWNmZ7DmaZrOEigng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782443854; c=relaxed/simple;
	bh=i5Ci9pTfq30EbKGiGbzN8v1D1DQxqJP7oGpIKQKR1oc=;
	h=To:Subject:From:Message-Id:Date; b=OV5uqP0ACr0M4HXLwi4LR9791Xdqv/D1gLMQD5ufUE11Gckuu9AbVW3FSe/Iy2M5uzXLVb5XKtO8O1W2ikc9oQ86dcuj7dD5XeOipY6Ew5US9UKFHyE6UhSguMu6STd3ou30fTihwOMogL260YBKwe65zu/iOvWVfh3ugrh+KGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnimZK1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnimZK1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA644C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782443853;
	bh=i5Ci9pTfq30EbKGiGbzN8v1D1DQxqJP7oGpIKQKR1oc=;
	h=To:Subject:From:Date:From;
	b=XnimZK1gPtJ1Faq7D0ZN7LUv3OiJu8XxPHijwLm5/uo14/vrjB4MndcTzWvyw5TDC
	 EFM2f7pyPL+gvzeKydAesmNs1MPSTlM3o4PvmSazYXxcgXuZky4DEAmr1qekGHOj0H
	 rhZF4hchA4RaPRZGNNsA01TkCjJ3O1oRYgzXzqTGK0ffliNlq8KHgpb5JYQ9n6UuFN
	 ii5eFHlRWDLjl5rJku+4X2rMK7NxRhzxdPHwYBLuFPdvV7utGAzT3meEphQlIJN0F2
	 wQdCiV7L5hhYUvF8xU3kFOAlN8GtDY0v6syP7Nm31Bhj2jTV0Bn3Ks959dsrahe6La
	 9XmjGGgCwuebg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAB2CDE00B
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178244385369.13606.17306242572706847075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e103cd913a446716c10c90ef4020759cd2254b819f70c8e772941fe416afbcc
Date: Fri, 26 Jun 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782443853
