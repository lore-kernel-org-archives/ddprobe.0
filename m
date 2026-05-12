Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CF11A6838
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 03:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778557834; cv=none; b=TvvxAwONtaoe1Q8piDN91/udmhvlXzj2g5dmyelSoGI3rTA9jV6Ya23Hwm6aLrHVlO/byaE2d8w4fY0vS30YYOH6+7i0j+Pv1bfjy6xq0l5Oca8Nz9zLFKhyyNuOnjA/X8pbolbPTR+2N/5VrY/yiRZXxgFQZKP0sk4BTgn89JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778557834; c=relaxed/simple;
	bh=mNeOU4s7dGqurdln6Ggkn46L3r5+9Ppxd21gv6Pn320=;
	h=To:Subject:From:Message-Id:Date; b=VZ/Zy6w4CSpbzKq+EDeuvm2HdVG51gTDvUIgQW7Fqcw6wlu3yRwvCUSF7u7T3Vyf7Qv0SliRsQOTseysHJmvKS55l96YiIQM34RhKirdOYcXcSlKBlA3YecngyA3Q3kGo44Jdp6PHOmlBE8tLzZQy5ZygoEbIOGEOTKQzlr1Dtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jY0wL0FY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jY0wL0FY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB1A0C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778557833;
	bh=mNeOU4s7dGqurdln6Ggkn46L3r5+9Ppxd21gv6Pn320=;
	h=To:Subject:From:Date:From;
	b=jY0wL0FYl70l9Gj9ZZRobfz6MzKyHj/KVnF2m1InxrpE5lxkXJb7TBpwUj/UzAhQQ
	 qgULkOv9kK0fd3ve1KgYyBfKzZcFB+ycIZwSwr09Oug8cFNzOmixi7xp98Dbr3UEv/
	 yb5QPQSKiGptq8jOrSEAFCde7sNd6Voba3Vizri4ocTRKCcJp29P0a35Q1/uJFvcvg
	 IC2dVzGrlOTTM3wzIsBoNSmIh+o4U7yOGRR/gcBz7gDky4GiZsRnOLeRrRyGA4W/eZ
	 5kG6HVZF8OhT3s0cVMNtmXtIIP5mib9CHgH2B0befp391TmZoBjJ7tKzDGGlTOvyFC
	 fOHQzaWLX+osg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB35DCD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177855783369.15902.13438588229571897500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7431a1c0710233ee476beeb5ef762eefde43e3d4aa925b33283c9270900d541
Date: Tue, 12 May 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778557833
