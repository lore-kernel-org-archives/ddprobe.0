Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F082DCBE6
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766384034; cv=none; b=SSogqRQTCmUiaCGO4NYPmNtwPA8o/KhYqFBnw4jywhQ2Eb/paxk6BJsuDHJcqsA4yUmQorWu6oOqjdazwFRnceRSmA8egHVpDeXcHCWwEM7cl+qZ0LdikgefVLurBdyFfHSdmpCEhHjpBOoAKYH0NlP9NA7crAURCZcAdUKgvYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766384034; c=relaxed/simple;
	bh=4lO+cDW7ORNg18x/FsyL/1dsf2fWD3fOdgkOpopzn8k=;
	h=To:Subject:From:Message-Id:Date; b=C2oCwLI+2ZpLckD5jtjS2kCNW0HX4Y46FfNoXO7zBSPePKOz5/mIbspaR32FAnk4MDdsTmhqI96Q3XqHjWyruD34SABXWU6J7sjD86rtPPmj00zYKGk0dNxy5ExjFFBnQes5gAHleq5GkAIcNWuKddOTWuShrhWy7ywViKDLIB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6yAIgDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6yAIgDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74BBC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766384033;
	bh=4lO+cDW7ORNg18x/FsyL/1dsf2fWD3fOdgkOpopzn8k=;
	h=To:Subject:From:Date:From;
	b=E6yAIgDtcgGQ4M3HNmee2WNop4wB0K5C6OcdgMrYKO3gy+3MvcbkVH4JWANaY+8bB
	 YBvMh1fe+pKcSFogpCU9yfgRDm55/F4IG4XIzQd9ZXCiM96cgwpj4MzIM+AZvYoczh
	 f3LXpDosK+BrssG3EqS28P63XFNcNOja3XvlvomWW7D69KIzv5Ga/mrM4f5uIMWnHq
	 k5aq1I5K94gQyNBVw9ozPI/fsZgvsdUv3LAfQbGs4L+Pe/bvT3o/RCwi+uU0/o2dqN
	 pTPHLIM2NMmRj9Dm8b6uZEAshTs0y6o23w5OC3+nLCZ0CnEBUoipjpc11Iq9amUgVw
	 Soxrl39YHxqBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B0CE6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176638403358.14611.12107108895146015676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ad59c99bc3af3bfa7ac27be0929216e35cd97bb613f51defa504603021e3b2
Date: Mon, 22 Dec 2025 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766384033
