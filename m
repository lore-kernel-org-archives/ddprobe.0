Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C2C1EB1AC
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744255794; cv=none; b=nRjsaWxiCvkCqhLokSA/05J0tH8XPD3JOF90+QVhrLMsMDv2Sdg215oCNPoS4W05updsjJCot8AUrb9nEGRWIEXJet5P8c4IKiMRBBSsOtUT4M08UfBQm2c1shlSkPwIYf+xxTB+ZqUWnw259VGNVwUwQi+XVa9HvA9EVC8RDOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744255794; c=relaxed/simple;
	bh=mYb0i+Wv7y7FBXx2G6BwFqWrZXqmuD5aT1ZlW++2Ro8=;
	h=To:Subject:From:Message-Id:Date; b=BWABDIkSWSMwa1Ha/bkYxxoS/GFznYupYczgjrnJKWOn16QQyKr+T/e87lxlKU2tenkCdU2W+r4XWKoFLw2pZN0nbQcOK6+HH3thP0PJ7Vi+cWdI27tF9FZeR5yYB8jV9eqWaBO21jhRmzjj73SzdZwETUssj5zLaa9/1C8NcCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBrtH3Hy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBrtH3Hy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E00C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744255793;
	bh=mYb0i+Wv7y7FBXx2G6BwFqWrZXqmuD5aT1ZlW++2Ro8=;
	h=To:Subject:From:Date:From;
	b=dBrtH3HyFvN4knNeuohAJQS2AQ3pkWAz0lV9Yu0TQ6/63v0Dw7MbovkRIudoDvncn
	 maZiYpZv5CjQexq/AYooiL9WXXf0xqGntIR/Fqs9LbQ11HjPccewHLuDJ83opu7V3m
	 6YNEaaMn5r4pxMbLUVCUGRwGAJD1nYe5fqX/q8r1oIHC/1SnNstFwyCgjdLd8wGV8P
	 oa8i9wrertbOISJjb3OKMxNvUZUr3QV3WEJxYKGO1zUnjRSI0Dg8n3N5gJcMLiLvmS
	 gctEoCr71kOuMYgeO7MFKano2Xayz0IfvB5CYqkfJG5RGmx7L6pI4OX9vPpA/yIq/a
	 d41jtHKAoNdcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3046C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174425579363.31074.14382933535905678568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e902f92167bd01c91178dc9db8dc8f04da119ab9847b1e6d1cf15895342abd
Date: Thu, 10 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744255793
