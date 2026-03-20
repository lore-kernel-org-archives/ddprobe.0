Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086D02F360A
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773983694; cv=none; b=E3phwo9RbiGkukd+FzTq1lkuT15GNQLHNOBgc1RN8orlzNJTYHkJmHMucT1xlsvbkCCvfZfBEXhXZW2oH+nULq9SG8u9hSwWbMPZnJuUkHhaFPoGWbvyeV5vnfugcxdDU26npt6vVXtoQDsI1P/OK7ZT0g67sixErOUPmlET8Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773983694; c=relaxed/simple;
	bh=6+3G5SRTsF9NsSO8Jq4BzYLPyE6a+zn2U2+48suE6Fc=;
	h=To:Subject:From:Message-Id:Date; b=V+etlGKmF4oivBNELVGHNpfHj3CEsqc/SnsSM+NEvwMCtoDcOemzAQqEGrhxNWVEpYGBPbTw66Vky06ovgpI7nLo4/vIdmoaI1b4C3p29ibDslxpG7sqTBAZgPxbP66BkaAnGCETzHkCLybt4fHS1lxDNDJiFGrSk+qLxEBGrMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pV/KmdnF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pV/KmdnF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DFEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773983693;
	bh=6+3G5SRTsF9NsSO8Jq4BzYLPyE6a+zn2U2+48suE6Fc=;
	h=To:Subject:From:Date:From;
	b=pV/KmdnF4sYD4/NgMuK6/EI+E8jgv1eLd4oB8tyjXnxZvEJd2fQMHCkveK3Z1+je8
	 aW1GGikXvB34fTW8n2sBwIeIEqf/ui9zUFvhy8Z3KQnQdfUPqKMh0SkydZLa1uVk5C
	 Ryplc0na8WuiaEcqmIadI87wqt/wKoTPUcLaGQIitLifyDMW2o8sxfMvtWaLcolp07
	 7z/K14vAd4rsvoL2Z0W9DW4yvzNeG3pFkjEowFyY3B3lFZXJHBZLd4C/Yny4j9i/Fr
	 GdH9kW9F1+cufe+RMPCdB3anuc21PZm49m54vxtRmLbLz2Y9qrnObrlCWPFIDQ6TuN
	 T9q2nzGDDEMOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF3C109316E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177398369357.30462.10465757465146225608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b200dfddccd0853cbb11d014561a6bf3cb25951bc76c314475d241b30995e5
Date: Fri, 20 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773983693
