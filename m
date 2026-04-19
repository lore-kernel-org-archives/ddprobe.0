Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DB9199D8
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 23:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776641854; cv=none; b=POkswliOnV5KK7yVBgL8oZvyBoz+xmIU2iyEblnSNCyT1Q/xgRspUbdOSoGJFzvNPJX+Uu+1mnLJA+B25APVeRmJ2aZRq/204zfJIUTezE4VNALyb9uPbODSooPv67Qb9+oi9H4Qt7FO2AcT0asdUlzqsWe5qLuSCWPctzvykpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776641854; c=relaxed/simple;
	bh=YJmvQkInjk0MiR7YEBwVbbDsyCwHPwdu5KPPBSKgL2A=;
	h=To:Subject:From:Message-Id:Date; b=hKVDkcNH/QFWCfbJ68p/Pj7bvCltzMbnPnPTIpf3ePsirb1hg67tM7Dket6bA5iHGjrmMPQvAogBtGC/kzBlMBcu5pEXDvTZCmUcHGGF8Xwd5QoTGoLH0tRJh4N++JFHuyMEtG4GAk4MwmuvxHKf5Fg2o9603kGpzqFyLfj5MYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrObTSFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrObTSFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5A2C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776641853;
	bh=YJmvQkInjk0MiR7YEBwVbbDsyCwHPwdu5KPPBSKgL2A=;
	h=To:Subject:From:Date:From;
	b=FrObTSFndbYmS/mqL4aq4BSTMRFViK/Ph2m4y6y+AVNu4F4XXPCIJNVfCq/jLj0ux
	 9D3OhxxQX52GOX2WZNMH4Tl6CYt50HwyFDBr81xO5Yeuk1D/pNyFG6IPSjuc0eomDa
	 eqhvMIgJraRNRZvGE9UwitLR3WkkYhwC3giWfoULwaMeKE7eaWGPAx6dqyu9SwVoMP
	 E/C679HVQ+saRN/BC8UxBnOxnYzWteee+7rlxBhA1IGRA22kqB9DiwWb4iEEivoNZs
	 bB55B9fOXxq0hWF4uPNKXvg9twiyBiQ4n1/NfLfV/0kj8QEoZYrXIFWJVOEl/fqFnS
	 4v1xK4lLhmdig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB52EA71A3
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177664185368.1270.9374814554898815770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 273e370f51983d2333ca9d787108b08f68a562cb6f17876bbb63211f5efa93e2
Date: Sun, 19 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776641853
