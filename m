Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133B63FCB38
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774359894; cv=none; b=c/6eC/85wzARG3LGGoP38RtDOwFTf5q9/UCCfcx6Mo7zeUPaXNRHCgmsQtE4UsGNAPNWC5ER/UsPQ6Wpr9es4/H1J3bLSftzpYPk81/xiRGUDlSz1Eur5zChJZbTeZSzxqUswQJOmy8m0fBGtPJu4++vbP0S+aSrrUio/jdSLCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774359894; c=relaxed/simple;
	bh=Zga7gQ73t/C6y5t8MwvStl5/f+EIzg1YLO7uwPl+f/0=;
	h=To:Subject:From:Message-Id:Date; b=pIXdGS2x2gBFeefLYHSM6PAGYG5u7BVZv0Dzc4GW3eFsPrxL0kvfr3iZQhNTvYBNgfVGAIfzsJ1hMWlLSj4Bx9QKIgpr/ka+ydQo6R/KCbjBx4r3fuBbpthhv4z7MSx3XUeM3s1z+5D8m9YD0hWhmxhkXbD/n3B6tN8m2uGkZTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5M9eKEM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5M9eKEM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA570C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774359893;
	bh=Zga7gQ73t/C6y5t8MwvStl5/f+EIzg1YLO7uwPl+f/0=;
	h=To:Subject:From:Date:From;
	b=H5M9eKEMlQXm3GSZcf734LTj4kNr/SdGsRIyKdgeBLZyGatCq5oAE0vh1p9/N3MhF
	 Snt8JKeypCAtvdStJberdy9hh1/itLxHX+ub2V07hPkaLh817AFsfRRB8f6RaZn8SQ
	 9I8Gw6i67ILGESmhhoKhHNSSQjbCwfm7nsKxAOV9vriZaYQe/PPq7Pks/J3MfAkpTl
	 9s0aN+sIY6KXCKSt0x6tyPEc57FrShgeEMFhnW0aUy9n1UnNFOpP0o4UzX7PSDUHIG
	 1QK74sJ4fvfUoJB9iHivhTGESeNvymv7d8qiB2B/q0JhYsRPLhAH4NNzW5GPksBiOn
	 aiGn3+88CcnyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95241F54AB8
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177435989360.28025.15101448884677015706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4761d65061702f34bbdd912cee294a16639c206981ba8618166c7b36d8a5fa5
Date: Tue, 24 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774359893
