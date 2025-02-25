Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493B921ABC6
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 19:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740511734; cv=none; b=Vfka2GN27ng2I2AQoKlPsxwz08erZteI0H/vri4BiRpng5KbQoz6pbqmvixEnu1zjDLwiqqR3gQWpgWrVsGkonDdqOY2qnNmv2fmcbh1WYGulJSiH2S7r8hNbaNvEl386zP2ZgEjrXMPOg+DNmioG6Tm5bZDAweJbeKT3tIi/58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740511734; c=relaxed/simple;
	bh=YwB+8mh+O9b5vsTK8/Z754WajxqLaJxCbptPhkxqvOo=;
	h=To:Subject:From:Message-Id:Date; b=svFV74Tiw34XXV6hfXrpAkdmk3+K+J8rKTGSw53ETP3rp8Lyek01M3K0GCWvuVdSNIKgoeoVQvf0x1z70odJqIppa/NlT/S8ik7GEcCKFpLZ+RPNMlipeXtoeow3Yl7DxEQ/+CFKoSB+Vwbj1wBMHBoFc4EMZqtL21OWUkFhcEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXN02dPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXN02dPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27F8C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 19:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740511733;
	bh=YwB+8mh+O9b5vsTK8/Z754WajxqLaJxCbptPhkxqvOo=;
	h=To:Subject:From:Date:From;
	b=EXN02dPPrsvRJIwPOHNKubzK5UND/l50wh2Q+aKxcozNspqgwkCQQviIXppHlnWXC
	 MRu8L22X6nPmLbx50AZBKb1Kx+IpzAiPFKu+7bDDUcTopml/+WhoO0I+3XMzLtYXWJ
	 2Fyt/Z8xrr2JHUWIzWbsR+eoOt+jWtgrEx7+Bc/NSSTx3zOBxJHBq1FqWwQWGCdFlq
	 H3tkcUqdNzp7bXInmdHisxA4JLrnfxMBBaZazcMsOzKLEf3tKE8VXMMJr1r4UGVcn3
	 DQzuU4RZg2mRZ0cO/DPmU917ZcGNAQuFW8TF/IqYOb+/rC5CLzOhzBiO2jd9zHrD1W
	 2ZWVO93f7b4BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF0EC021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 19:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174051173361.6436.69349324485764176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06395b8a2e7dba50102449c47e9fca7e5f68fc49611b34156363a41253ad0ad6
Date: Tue, 25 Feb 2025 19:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740511733
