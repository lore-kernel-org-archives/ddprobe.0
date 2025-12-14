Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E8FBE5E
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765680774; cv=none; b=GMAahubmP8t5woFO0/vL3LwhZqL1lalILJP/8poyhFx72t+0aYhvHD//XYfM1qLnS1usgacXamVVXmcCGPip8DRSPHd/FFVpmqlIzOF+AZzNSenj1SqAJVOf2cJx3Scg2Nz9LJix/RR3GiIr6VPozOgqprPmpp1KEIX/JAkhB/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765680774; c=relaxed/simple;
	bh=QyOGOnZEst2Jyp55UZ6QZGauZDFLVkkWZsC0Shvc6pc=;
	h=To:Subject:From:Message-Id:Date; b=NM3r2iG/yzNPkNeSOOAE2MX1TMuh0UrTsyzHImLHoHrBaninsG9CZqzZ9rKZ+oRHdJ+HUnQXTPBysf8rwg6EG8ioU5fkUilo7CkJPTXoBSZwBPGPxH+oDwVqf/B9q6MEwDNY00C5rA7q7Hxmc6dF0LinJl5chwYFg9OMoD6kvKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxSHEV57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxSHEV57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DF8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765680773;
	bh=QyOGOnZEst2Jyp55UZ6QZGauZDFLVkkWZsC0Shvc6pc=;
	h=To:Subject:From:Date:From;
	b=pxSHEV57Zk1g/eDBxLPWtWDrw1Q5c4dwDjZbG3V2vA3v92ee2RvWkvLXW8q4Z1irh
	 un9yVllQ4GG4tYT3Mku0wIuE7jT7LT730MvbQcKtpP27OiTXOSurzm5nWVu4IfA1Rf
	 76iz7f8UT3cXccT7cZSQVDUU+Ha3Ss3jAWNGzdK1d8Pr2ogxu9CdYebFqQ5IYq/HYv
	 oYw/BKonE1x8kNQvAliObGQVWDSFPHPDoynpfXYs4UQgaObI1c5r4gT80NP6Bkaz/+
	 JW6tQ4uzLvp9ndqS1ksCLEk8DgcwmbHYcBFJeQdrR+ZJCEabws5YeGV08EleTvYjmP
	 QCIB2pkS1ktIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE68D5B160
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176568077358.4624.5446313932769430275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47ad43301ce42503e6f9f223659dd860ba00da106ccea8765bad21cd5f09f07
Date: Sun, 14 Dec 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765680773
