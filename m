Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B1C1E834B
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 15:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779551554; cv=none; b=Jsaei1VbbyULNmYph+7FNaAobDsNq3shxBKTyQD/fSP54pQJA9qOtyxJIe0ok7wv/n98WAnEsDwMzD+M3P3He4fpy/Rmc9rFnOc23/mL21SxDI216PifxJF0DjqRWvkESBjFK0M8GP3HU2LGO+OS976IgutW014dLKckPypsKAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779551554; c=relaxed/simple;
	bh=Gb27YtYXpDmnIIUCLYG3vwKrRxbZv1bq+qQamvqHWzs=;
	h=To:Subject:From:Message-Id:Date; b=DNHQtmCuQZ1HwRdXW/8qyVikgxeeKK/C+CWpgBS+2/tJk+xmI+qpMCXx/lsJeFVUTTimTdNCPxBGASlhrO/SpdR9B7SbHcsXtuoLsd1LsaQvy4G37eQz7ylMz+KdyMdJainUxjawfLvoWIvleXmrTQeL3sx+nxLgucx32rS1Qbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzlULDOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzlULDOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5BBBC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 15:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779551553;
	bh=Gb27YtYXpDmnIIUCLYG3vwKrRxbZv1bq+qQamvqHWzs=;
	h=To:Subject:From:Date:From;
	b=CzlULDOA+m0yGG+7RqcjAOtQtfFdfDopAPm08mE+2oNnRZuOD88XgKSXuJU3ML/uZ
	 XZBHYVuEtw8BPB9OLRSyZLR3I8UU3YTGCFIxn+C/lQIJVr0aDPHkGBJvC5TohLLeho
	 nkvHMn1I4Ta6dCwb/6M+UYzsLOrXppOLCzgj91lkC56QTrH0XZiIVLwZ/rYJ3YpisW
	 pW9i/pV4H8Od0Y4FEpueIMck+bYcx9tcZYkbus31zG27UDLJlVjCPVgUDRf9kg4acg
	 urxRult2GivYZfbeeurAeGWEpJTbvyUMWJTzlW77WfmVBNq9PsPLwrzRmwvIEiE2+6
	 OUWbiMx5eCfmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A940FCD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 15:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177955155368.21774.5711253017691899838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a6e4fb63cc429dc105b0de8161923b5d32bb141253fc67cee054961c0ec2a6
Date: Sat, 23 May 2026 15:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779551553
