Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C381C4609
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752844794; cv=none; b=S8WPPOk8Bm06HN/qX7/cJ4W96Vx7dvOzOiCooZtIci0fiqjT9f0m4Qjw1VUDMD4p2VoLHTQI4+LgPNh+C1cWuIzL3EJ93oYFdulpsQhfDqGZmPFid5Im+1Xduxne7HrOVmzLUhdPGTUNMWnaaqLpA82m2203c027VjvYptvM8qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752844794; c=relaxed/simple;
	bh=ne+S0Mt4ihiz/EBypKm7R3/93z3ABFsqOQTgcrMo5WE=;
	h=To:Subject:From:Message-Id:Date; b=IFf3yOvVaS02Jornl3kVddfXRfgtAalY+ahLkE75MIZsKdq86liqFl2AU+MYzHt7vEOoOn6vns/GhXUD08E8zS3HRuKIeSUlvtFOqOlxdfURZHTeRLB6oBizOqluBOa+hIWngP4Yj3F+3xczGSuU/IeTHQ/KRdNc/ngswJ2EddY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AV7B8zyd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AV7B8zyd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6BFC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752844793;
	bh=ne+S0Mt4ihiz/EBypKm7R3/93z3ABFsqOQTgcrMo5WE=;
	h=To:Subject:From:Date:From;
	b=AV7B8zyd4cDXBB7YYujcLTEH+vasKWfVl37jkMOW0KiZMQan0fgviKPx0+AcnB5xv
	 acQlQEy7YKjM8mzq7Q1oObwLsFrun4Q3k9BjvWNMFhH9gqKmBacrU2PUKAWVudNwgS
	 U9uV+8Mcs+ZvEeLrbg23i6gFdOBnFOrnfYUW+ZZf77DXGRQkNkScUcvO7pAZX6LwrE
	 AX2tlqnO1dheIFfugibQFLzXCsijnlOU8t5sRZTBFbxBjQhbTT6w4/TBFIhkkfAHkO
	 D8n7wTPB+N7gaxmyNOyP655rNGEkOFbBvZbTPGDQbmbOxDsaIj54Xqp2HcJ49/WXh4
	 BFcv5gRE7+qwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB1FC83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175284479357.11259.15076310882906589232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e29783e26158d21b34dc7e4554fc7d9c0f32477fcd9c679e521a7b0acf2d954
Date: Fri, 18 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752844793
