Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D58457C9F
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766697834; cv=none; b=Gw9SmZGC0R9x51EGFrvlNcgxjDOeVRM+TliuFyNSowy8xFo3dziwvPPSh/suSZXiamvaLKPBikMZSwLsRFPuO7sdIwOpbDj2S4PEuQtnBLBux7WdpH9cO9w5Ah29UoYmpfud1t/m/3DqxtGhMb/cWr7Q/oEBu+fhvD3vV9Boe88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766697834; c=relaxed/simple;
	bh=71teiiv4s/S/w88YywQR3OsWtx2g/L3s13xZyLVyZBE=;
	h=To:Subject:From:Message-Id:Date; b=EeBqNH9xMLb57L1hmrFIAx8KbKhthN5zRgCVFQsdBGj6r45Ct12W5FMzxozfB8uILVv2METup+4Ulo6h2Qo5fWPURQ5ODfLkG/6K7DODiEAQZi5Jg0sjW7c49Qmo7vUIc4yMuLNZNMG/QbFjUQEt27TMquZhhMG7g4k07AJsVjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJxDUq0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJxDUq0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8646C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766697833;
	bh=71teiiv4s/S/w88YywQR3OsWtx2g/L3s13xZyLVyZBE=;
	h=To:Subject:From:Date:From;
	b=pJxDUq0gOSRH+Q91jtK/U3SF46PQzPEl0/DkvCRbRZ+Qqz1pxbJQnbldhIaNG8YjZ
	 nosqq9/m5230+G1JDJ2jnKa8jPzoYls1kAVGRqGBha7P4P3BO3ZmbEbJwMp9+lfGGW
	 eUIH+E2lxcUw9wHNzwaw8XIQVb0vrGiOauwcdhB7Sn7HtRnUPEPt52H0Cb7bcfdl0y
	 ZGPsJyE9yh+aWZNlGtmNfY4jdevzEdMDpvJS0dt13DW5g5/XwdBzyUB/61tGvgTN/j
	 zIbl+bSc8tWA8fKjHIpXV2wWNyOwHRRyBT3MhGR6PZDPAz8GqndxvJFvafrEz10EJs
	 e5ODvksLCVZYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941E9E7AD4B
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176669783358.26890.1990659936789402223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8faa747adcff70547e996be609882107f134b58ba35a7428de8e2db479637f7a
Date: Thu, 25 Dec 2025 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766697833
