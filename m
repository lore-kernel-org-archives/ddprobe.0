Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185031EE021
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730242554; cv=none; b=LK++x3gBkRGuDN456wULZE2mhiKiLR1Z/zaEFib2S/814vOk+6PGnT23ksHtjKwkmopZdrPqKIdOItnQHAISWJJM2i/SBaq5MYV+CiLqHsv5Roha4ZHfg1V1J08y3f5HflhHVsrXBByo5r9gJpvKI8LtqYCATME3p9u9ayJlPYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730242554; c=relaxed/simple;
	bh=LwqQeW8qByJrrYeZvTYKQDj2CPlsTkAElsUBBLvSBDw=;
	h=To:Subject:From:Message-Id:Date; b=lvN3Xl2cWqhM13OLzTomhmvIpn1xdSAq+qZvYCKRnOWkVuMv4OztGCHcZK4Df65wpADyZER4VP+f/1hOLQ/iWY7kwkTABLln9c3JVFpAXbDgwDkBcddY6aZQjWTrhpnLMVlVoFDfzJ7beG4KnLmZB49r0fwh+udw3NcelD1bByI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWOT7D3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWOT7D3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B105FC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730242553;
	bh=LwqQeW8qByJrrYeZvTYKQDj2CPlsTkAElsUBBLvSBDw=;
	h=To:Subject:From:Date:From;
	b=cWOT7D3oeKFnXeJXG0HXkjnyIiZXkKsNmPZtn79zfpblPdJ6+RFLMkiscTVuy4gef
	 DjyhodGWIsWeIMkI2A91nDiuSaAJlmJRRKY5h3+x3YuRAp0XYESxf1BwSjtaFEkeQ2
	 yQtuXiCjqoYVFIfyOaRQ/JAPX4wVhc2HBGrCu56lDTHwcAg7BnJ6+3USoX3odZtBb6
	 NvLS56harW8yOXlT3IRpjO2VtPp139xfjT3BrWzI2kuFk7ncWqe3VHvbdkNBcN75ft
	 3B/BMClz3tTakecG1Dx7oplWaYAoLFGvGsNZJ4iZkmKhyzyKvyc0/7YBUA38zKWaWg
	 lgWsRzi4K78Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E28AD7494C
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173024255360.20661.17284741633020293430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2257994f67216a06e35553af04d31e962112df223408021b70d468ca86ae23
Date: Tue, 29 Oct 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730242553
