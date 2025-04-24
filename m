Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F457FBA1
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745519394; cv=none; b=nYj3enCeGerS1krttLCmtJm4bsPnqINXqmK5ZgLk+oJgqMVrOskq0kfS71KPOiwNxIygfKSRNEfl2X6A5qG5wWBNCsS1Qb64BNYNCcmEY/nXo30jZaf7fYBKSE3w5Lj89rC2cuI6PLfm7ELdYyvcy1/V2AqA5WDpXcOMc0Bqih8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745519394; c=relaxed/simple;
	bh=oFnQULKsypD6wmA8r9PLncv7eSfNfIpc6Qv9Trdyzvk=;
	h=To:Subject:From:Message-Id:Date; b=vDkQFbGEQ91VHT9GWezjx62/Fb3+owiTULKXalg5mOxb+JKe4UzD3YcK16L4a/VYw/hK9FGOg5UhmpM2Vl88p6DoeGMglTo8KLGwaP9YxFQhyJejcBqkikD8g67pKpjtB3FebAAV6RLDDtv4BXLMnO7H+LhTk4ZIgRKGnRbaji0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOx6gMF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOx6gMF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1208C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745519393;
	bh=oFnQULKsypD6wmA8r9PLncv7eSfNfIpc6Qv9Trdyzvk=;
	h=To:Subject:From:Date:From;
	b=ZOx6gMF7VNmwn/Qkm6lEa5aiCQZGX23uyl/uKpv4qCkXZHBKOQ+H2xj1P8ChgypXm
	 eyK8ERujsKvjf693hzXqfYwiSE78bgYgN2GsJ1KHy3oS17BUPhsAmCRAv+ZNFKpPuv
	 +aUuU5fBEHOOtZDXjIGjrD6QAdfI9d64Dh0+CpEN/1vtTX+nmaT6W7a/jV3cfWUHNr
	 xbFJ4bKwB/c/3fDDntygoRKdt5SewZUSs5FSyNCy2CTMmys8Fr7XGuEIpx4OZbuZ6n
	 sZ0FbCBX5+XgNvdRiTM+uus1ePUYXnc44mjFPsAOPhNuttPqAYiS6H1dFWVbwCNc9W
	 WYcP2YfY/BBmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F662C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174551939357.21482.8408788856422432939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f57a233170fe45b6e0c2fc368caca2e8d919fb2516aedbef9616863d56be1b1
Date: Thu, 24 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745519393
