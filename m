Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F44F78F39
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 03:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778989834; cv=none; b=SXNZKm/uVYTGoRfM9VIvMC6izyp/Og5vDWZrD3wVWhn/KKNVd4N7NZDpSpDQwYUoV329PtZTviIYzOaEBJjan6o7lwF6LdxgB2Yb6wLL4S+7tURaA1yDqrDutYVCJ3Mz47UjaTGxPLfSp0DZ4tevRWwrICbJr2J4tLcQaDOA9rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778989834; c=relaxed/simple;
	bh=vgvpQaGbugEqCF+9W65qerkUmxt5AWTe/Z0R8xLvjIs=;
	h=To:Subject:From:Message-Id:Date; b=N+W7mWrtWuW66jcYRx7fZZi33CVTZvX0fB0DDDkA+KGrDkcNkwK3Ph40HD7KTRr3K5mnlr3tH+sTUwdcXyxEKEX1O297Rw1weHiqQ+rdE4LWCriwhW+dXEQ74H7btZ5hDU6dtWi2JDCKyK/tzM9RFsTwI+Kf3r+zlch+WjIw0vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEufAYYu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEufAYYu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA1E8C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778989833;
	bh=vgvpQaGbugEqCF+9W65qerkUmxt5AWTe/Z0R8xLvjIs=;
	h=To:Subject:From:Date:From;
	b=iEufAYYuDx4K5O8c1Wx9fEYYJ23oWW+JsUfb8Eg9zqjOZo8PFNVpHL06OYLXZOtXN
	 5OpNFxW+bFThy8BcUhFi3occz5HISh+5YBjXpID3xX6lawWuR5u/q2iPIVdLIY5QqV
	 U7y5hUHblTBozaon912dNCpWL+nGFciAF00IraxaEOe7wCJ75zFYBkG1PurevHMXNG
	 Pgqv9kfqElm2WMR+Ym+FXSnmFZn1zhOzG7DVKaQbZvj+EdHooej9tEOTMzXgHiz32F
	 baqCf/74t077Nu/5+p5PzVxNpCIHHo/qT9TkhERSBq+XlnMJ3B5+KyfTx7mlS9K3p3
	 +J8gAcEb9RMgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA37CCD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177898983368.28850.11000130700459444778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b592db79e0a63a9ad516d5fcf80532318a4a0bb330408156039a549a94a4468b
Date: Sun, 17 May 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778989833
