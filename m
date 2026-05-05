Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E52C3CC9E4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777967854; cv=none; b=FfBqhKr5TS4O1xei38OTl1KiISDLJP209WFT+wxMTZluRS/VMumnn+1CU545O801rvJjD6rzKlvhQOzYm43dDHsy664CFsrZSN2UbjGNrQUmUAy/+IWHhGPbVNZqZ8NIDYrG/52qhCtWwEY6otsDLRsegwfKj7Agu0fksGqL+IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777967854; c=relaxed/simple;
	bh=4jEnz5fgr1fAocdMCOCtIrfCdWRiy9ow7QnA9kFV7YM=;
	h=To:Subject:From:Message-Id:Date; b=LrigstM80YgRU2O16ofbAWpXInCI93WU49Nh/mak56IO04KXSVm+eEMV+1Uo9rJA5a8tRgZm9VBTNLUKfpvJ/0TuTn+GYCWET6t9s5efjUH/1vPAZPNW3sftbY9VFXfLYstgz3+UUTMGWzZ0AT987hss1t8DtNU11CyWD8xJ5NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cgb/y0fN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cgb/y0fN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B658CC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777967853;
	bh=4jEnz5fgr1fAocdMCOCtIrfCdWRiy9ow7QnA9kFV7YM=;
	h=To:Subject:From:Date:From;
	b=Cgb/y0fNOsPCK+GO3Hqv/Rxi2ErTRm0048diz/+UiMJIA0Hj1lEWbNRSS6g/6F8uN
	 U+UpunHKxZDspRxKBw6f/1lakL6KWqw9Hgs4JzP3mZcJGJPKiSu2UybFwoXLjaktiI
	 TlET5h9SDyqT0j5q6cL1DRcpdc+YCFTJruycyqPUsfocaEtCSrGSBBsmGnEKEC3OIS
	 qeaXL1r13Vap7d3Q1/5sdJrz/7MBJam4WOPUmsCjNkyeFqBdC8nbf3rCnSNbcwV9t9
	 nqV/lh8qfiL+4AhFxMx3hgTWqq0KKamG57XBoFRL93BfNZ3EJX7S+D2wd6l45kFDgS
	 AFO5K9t+xIw0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E8AFF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177796785368.980.12591057957032125014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cedddb11083064f2f5420dbfe5dbf455657efc44be3ac1883073b087b719b69b
Date: Tue, 05 May 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777967853
