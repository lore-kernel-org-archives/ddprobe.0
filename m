Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1F8C4B1274
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791661834; cv=none; b=DMBC5m4nqiXWAXh1z+AHvylZOfN5rKLg0J+jfrdqy5af95fEibu9JuGUxPcMgwU4uXhRvxtu2shEiXkN8/5NZoei4kewZpbknrP3vBduPsGmeV+5gMGYltz80C0VI05dbLYdjTEToSKme7C9Si2cqsSnMWXKUKaZKIbtBPbT6nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791661834; c=relaxed/simple;
	bh=VQ884dRdDi4Y0W2pDH6lzB186bX2g2D7D4o+eHk440Q=;
	h=To:Subject:From:Message-Id:Date; b=Rpch+S7AUv+fkMwmAwkLFv2jfODWXc6TvNYkdHrEBzyDIsm3PZm9PLBOZsEQU2g3ZjPPjMISlat3fnh9tsl43U12b5AmErodLy4pByk3wIEBp9UTq9SXPgJ10xA+I38iJTcHE+Hkgd92ymwrH68Dk/iSr/XAGBy+536//X+46cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLkIm62y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLkIm62y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CDBC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791661833;
	bh=VQ884dRdDi4Y0W2pDH6lzB186bX2g2D7D4o+eHk440Q=;
	h=To:Subject:From:Date:From;
	b=HLkIm62yCrZDUr1xChS6l8p1tTso8r+fsRNtqc01Y6M1wEVIE6qIs0nQkxc1Tl81a
	 tiT1NJ1AOaUVJLjrfZnz7LR276Ea8uteQixk1zMTDn31qsPfJbdqt9AX/zVEIW7gCG
	 C3HB/Urzx5e1Fkz+IH9MgA5iieNPOrHHg+Q8YKGMz+LJIxXY5jC1CBWqK4Vxk7LOMX
	 D0OZdEOYz+9b2ioFk27S17XPmkXJ0e09qEXJK+OULRqh2yi7wHtklRuRb+iGiI0Cgs
	 87tOeyGESeHQELCL0+ge9R6cR2SdjVSqM+cpC14/FL+pis+RuMw59rN2vWIOu5C/oU
	 /StsEl4//AUcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD577CA9EC0
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179166183368.23851.8339534033793130266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35cd0eadbf9704145db661060030da271a4617990089d53b6eccb37aef46b203
Date: Sat, 10 Oct 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791661833
