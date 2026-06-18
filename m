Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29891342177
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 17:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781804794; cv=none; b=ROyyRAdmUizx8UGhIg0UPOyckuyGozF2/lWhzDrPHl7bGjyRtpsuF5xV4uqRZcHOVsVS2oNnEV7tIbE2AC8T5I0QN3Okd3VTcJa2+6d/+lziGMGzctSyH5AEkgTYSXaEYqvd6YdcgT5D7ZX7e5VNtq9nmndyGjEGxFE04nCbFig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781804794; c=relaxed/simple;
	bh=w9iM6Gk6xVkFQaAf+c3dD/pST0mpEcUA7udjf9SfStU=;
	h=To:Subject:From:Message-Id:Date; b=UanmmriiTwTVWb4bFgmgMmV8tEQW5YyBlasef7MWQF7YeqPi6/hP0hukZlmOc2mHsreGvvZ8D0TEvcllL3FKCkEzHqcMezEG7e4XQjSTtFCEd/iE4jCz1/mYA1FqnW2yRlwdVXT4uEV24Ac0rNF5+Ja4eOO++uD8l640V9ZjKPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jniHUUWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jniHUUWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC78FC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 17:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781804793;
	bh=w9iM6Gk6xVkFQaAf+c3dD/pST0mpEcUA7udjf9SfStU=;
	h=To:Subject:From:Date:From;
	b=jniHUUWftwHIOD+pvLY6mvza9pGrz5IYn7RW+4F5Ao5E06a1ZffBjeSemTNGXcUHi
	 sJ5EB6GOSep+KRFGEqk+PlpTZId/FPsKcqfB9wGbD1qcZvBhs0JdfzqLezUMqGPJQN
	 pnkPMHtaM4ks3M+/PV88Lgf9Hubk8DtnOOsiGotB5XqjO7Xhk2/cuO3s0HYszGjzox
	 j27AEg1GAMsGbtxQLL0TIAHLTPx6lxvLFK/NcajaplmzTvaYAXmahZKB7olzMusPak
	 eZvIACZXEZggWTwCP1tL4Vqhmb29gf4BzhiejosAKfLvTXM0K/uHf+A/8aOXWmW7/1
	 X7Vju/zCnJhjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFE5CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 17:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178180479370.10132.4015923564949581469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40435a9e717b3880dc16187196c3b8d25889d4d43c9f77ef05499793cdddc6fc
Date: Thu, 18 Jun 2026 17:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781804793
