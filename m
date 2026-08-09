Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEBA737F32C
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786270834; cv=none; b=IoyShVfj7iAKWBEAh57pujr+MqDUStMU73nFhKLVdlRIttaRNct3QtjyHLowKBxhfyFmbCjQL4WKuyfAcEiIBfBcX6wo6QvN2hc0Xdkpk7b+eYPAX/bRFjkTjqt+uJ0EmhYcgk2WDJCcM6OysC2gPiMq8PcYtkgqSwFi4TebC4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786270834; c=relaxed/simple;
	bh=oQTstksr7pyH32D+j8qygCWzIblnGNVHNPn3Wuj1z7s=;
	h=To:Subject:From:Message-Id:Date; b=BmfFTbxyt6eqFHvJirOmSrUKLSy8YrBEQbsLM6UTcD2gZQtzyCZtzvQlm6tJQYSvPOQ88J+jwH8JBTLDNj7ZcFAsDqhmrvxn9owBUSjD2rGP1oJw+BhD4NNCBy7oKUuqXByRqWNDPLanMez+o3PqJeQebte/6wxKCfrTNWVZ7cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UiBtpjEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UiBtpjEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEA9C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786270833;
	bh=oQTstksr7pyH32D+j8qygCWzIblnGNVHNPn3Wuj1z7s=;
	h=To:Subject:From:Date:From;
	b=UiBtpjEpCw2CKS0w1prwmYEj3OILeWZAp4Ge9ffMTVxBEy2tEn4P/E+oOVm3hpRhf
	 wJR1AQzeumYafeMZJ+0Nrz4xvIHfGoegd3M2vv20l0eN9xJaheZcBhjHP9sSnJ2uvE
	 kBYCdThc+eGXEOD8U8SBG0AIVD0JoXx6npzELH0qWQbmgTUGoQWoLcKZoOpCKE5TNb
	 yx9Pfh7/GwDpkaFJhBbYe8Cj2UMHqgP+ZWnt6KCfofEAxtDYxgYT/bBC4HLCznu9BC
	 vLV7iFEMhO/kmhnv1YeqL9pdsM97aL1jae20Xo/PKInj//925KlslV80eV/1IEJyth
	 dpPMmG7z4fkQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABA7C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178627083368.26059.1281160232209166812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc87b97c42a054eaaa97ad41fe36aa844c9dad834d09394f8b650fa64fca6b9
Date: Sun, 09 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786270833
