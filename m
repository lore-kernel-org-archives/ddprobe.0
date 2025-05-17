Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307AC1FC0F3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747517394; cv=none; b=OAuW49tjOojA3q7b5dOYZ7orxMnR6tVDdz9rxL00siSDIqGc66v9jD5vFRbr9vmpzyLjrB9034SkmUDwby8j+sX45GJ89YG9BHVDzOLZAT5FjygZmTvTyoi5zo33Aah3mJWFd3dkL2MGgNJciDd4VZIGlTiDWe7WASxSl/KQVM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747517394; c=relaxed/simple;
	bh=miMO8eoexbTMIin2B3pAjTmo0A9v/BdeT0obpYIf12c=;
	h=To:Subject:From:Message-Id:Date; b=QJQNOi9Jg70hHmt+6KL90xkrK3LCyKkW5Mcucoh0RPsaZtyG9+lvmzKFLEcUB1+gJVWjBbtgU6lLLWbp4t0AbOI//XpnESequVsLM7hepEc2jMIYln3E3PwpRLvzAneDD5Yd4EozsEekxAsd7uVrDdhP4QowgtTNDCAfqnk+8fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XG0a/t+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XG0a/t+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02D4C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747517393;
	bh=miMO8eoexbTMIin2B3pAjTmo0A9v/BdeT0obpYIf12c=;
	h=To:Subject:From:Date:From;
	b=XG0a/t+VTPuHaBKB/FxysqINy6xMbq/yBnZHjDFBJY9V4rngus7yu8BosSbO8Tbnt
	 rPF26f1mLpg4Bfqmglxt7vc4UMeARG+OHbL22z/Snbnvupf3xpq9x39rXDY1FDxFF7
	 DBOupkamTtlba88A4ibHzsrn5hrqHYY0HBCjaNBde8EldWXd2PieZMByAeh1h4lCAo
	 BIjyexOksXVZ4nbgfC9s3ZPDvHB4CydZbrNk+PM9t2XAQdHD1uaAUEzfQQhklrh0c+
	 4Jrj4C8ulh3zqXJLfhw4UlKopQwkvCwJPlE6ZeEGpFJLIb6BybqPQ7TIWonhxRBCzm
	 Q6/Bfxlj3aYIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD62C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174751739358.31063.8687287960525427254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9639f0c835d99c2a477872a008926489301f43a07f19acf5152a13c612c786e
Date: Sat, 17 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747517393
