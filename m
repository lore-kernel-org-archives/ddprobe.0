Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328282AC17
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751753994; cv=none; b=niSmQsVAmPMVnzga6Jys55blgVRWYhruMxgXCDty3o7zRdmfBQ1B6N+2WRR8u+m6bMH32LyAsxU6Wzt2A5E/S1JTYLEZnxRT2SJz5x4RMGgXJaYftkuBDjaX+lSU+B/H544oF7jl8rqam6PFm2Kf9P6hJJhTchQ3aDSL7HuLhLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751753994; c=relaxed/simple;
	bh=sLoK4T70knArDLKbjQcC470RpJbLtQ5hRCEkqon4zNU=;
	h=To:Subject:From:Message-Id:Date; b=pTNoC/KoVib7iiwo+yzjT1bIxN5c8ZKZAnOVTUXSceHUVjucjm1fEtpf2+LR/z4dZuPkwTu0t5fHhEzcFqo3OyaOSRCqWf6KsxJcnSUJFIEN0LC3X/SFRJNK7xB74jznr/qHOtqJGTXd0M6DnsQGVN2dBEGK04qXWizCFTudJME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AymxnTVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AymxnTVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E24C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751753993;
	bh=sLoK4T70knArDLKbjQcC470RpJbLtQ5hRCEkqon4zNU=;
	h=To:Subject:From:Date:From;
	b=AymxnTVG+HfODUzD2pHXusY2Z+d3SO+yrS6CJn8+p7rn9Il3NqmEEBStvOPaAPLOy
	 nHXSUdRHvAU9YqOTlaSvJpLZzyI5IgIGo1CUVGJbJyxPs6I06AZOgUbtmpdm3eB5K5
	 QG57coeH/m9RBZ5asSkqNCnMmWxcikqE/AemDowc7SUJ8srFa/mg+/KQybId2HOrLJ
	 /xPy8Y+FCDtpgp+nLR6BtrRSi81LMo4lgmkFkDO5zDF05gTjODAC/Gzj641j8RWTZn
	 NZe4c4cPWPMOO9+EskCcYRwvkpPSLT5W2mhRti4JWnk1gMXu8pXOD8DBqOs868BIzf
	 RaEBIi2ULi+yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9499AC83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175175399357.11903.6711985127362577494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec85bb442619bbf394a0a47452cb60b1957fe71cdcaa253f3648d93457e153dc
Date: Sat, 05 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751753993
