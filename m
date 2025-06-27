Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6B819F420
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750996794; cv=none; b=mBlY4OA5EtnGJ9lOwDGThCUHD9U63AEpUHs2QNxQw8aY2RPKt23NE/iSM2Cgi+wykMoNGprr1+3CyhC7z6eKLzZQn5wTOoT+Tw2aZNuPp1FXZZBUiGKMOvDYCvv9c6545laEceqlJ15gMyjIUWd9i2L8HIHucnWrPmR0PAhnjjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750996794; c=relaxed/simple;
	bh=OTgSjC6lHR64orT/MQzaVxydRIDV76AqWX97SyTacak=;
	h=To:Subject:From:Message-Id:Date; b=j6viUhRnk0oz8mHRL9YNerjlhDjHVmSvWQFML5Z7CylmeTdiVyCD0vtPfVgxM9BDHDMNLfADTiNXy2RIRoD0FXDVL6ASABrBy/pUbrn3rk+MN0Xj0mO76n8e/xfCkDmxmFcLeDFip9Gh0UfT+I3Voo2A7xJ5kknC7ar6w+qH7Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAuAX7iB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAuAX7iB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2290C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750996793;
	bh=OTgSjC6lHR64orT/MQzaVxydRIDV76AqWX97SyTacak=;
	h=To:Subject:From:Date:From;
	b=EAuAX7iB5JeLfPy4yp7Spfd8e3YnPk3SqaJpC0OtI6hZ2cVzHYc6PSqe9Gi1W27mu
	 m/PzIBDKorHkzdhaycd5RVkaRyp4UU7vqCoPh+hO+OFAPHwCC/X4GHQRMqbyTcvxER
	 j/a5GI0EBAUxfNe4SGul8ts5Qjsy9Tyjz8eCQehacwHas/x931aGwzDYBAig6WEFsw
	 KgdFEU5qyaDfuTQXHSBOjQylh+yV5Ey/fjU/X6XLC3i2TyGGK6d/la58poQcoU2s2b
	 mCdIakraWwcBPUUoWX+3tre2oBtMnwCmKBRoPRFKraQXSzBt2tTgvEzI5US6U74Eqg
	 8M81igaXqbu0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907A3C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175099679358.26037.4455318238947820320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e98cd1ec83b0d7e5c11dcdbf1223b6f69859d67539f0d89614c38cfb1d37853
Date: Fri, 27 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750996793
