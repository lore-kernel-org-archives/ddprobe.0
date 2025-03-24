Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE1A2EB1D
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742786994; cv=none; b=qbm2S2fHnuM2p89qv+EGsC4iXZmHbLRzFbLXsCk8LVGjxNRXUq0ziqaNBYH30RUW7JzJSx5z7j99kVnsszlbLPuoONgPWNfENns5IAWThifqopQ/ucauWe/Nzcn09ZHGnd5djJ98DrQRmjl03u+gPryi5kdPHWJ2ksp2yb6GSi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742786994; c=relaxed/simple;
	bh=1Apq1ZhKzZ1DzA+uOIaY4ABEEKt/JvdG4+YGl+ZA3U8=;
	h=To:Subject:From:Message-Id:Date; b=Gk8MfWBcsxi3ZrWHvngDdkPrAZsJF3z4n0t6dbIWp3C87BOAVUy2AeplKmtN5V8G7YqqjgmT7/qGKKCi4HZ6wLiwOr0VrbfFnUVsNmMNwqVVVPb4u242edlkxlhIaEhZs489AtouDUiyq+1MbTy82JA6EmWO+Ucp2P4YJ9XOS2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5hvy+8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5hvy+8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2525C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742786993;
	bh=1Apq1ZhKzZ1DzA+uOIaY4ABEEKt/JvdG4+YGl+ZA3U8=;
	h=To:Subject:From:Date:From;
	b=L5hvy+8yRId7wsboYNeyk08LEhBNiPQTQXpWai47j45aSPpNlL+Wjp+i42tE7OGaG
	 RdJZ3OzOMnlsSd2XVAUAXi0c5T8OriXXJqHv6pBDLsb/f6xJz/GWYufyGgs8gZ8m7W
	 qse4z8J5pB+tRWPLL5Yr5zWDDH3ATJaeIk6vnIw+IorUQ+sivH7M5/pG9QCPhrEYo8
	 1IYzCpnnMeT8RD2qj6T2J2EVSUF5y7t0opu0sIQ2JSF0C7zx4kf3OB7KZjHJogiWWt
	 QrFghazZxKAJu+mY26JPcq9KhqAtPf3ZZGClDqsKefLDJGpV0zsbAjYdtj6jNKT446
	 C/STfwMVX/Ppg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A349FC36001
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174278699361.1797.2003671001930926249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c497ad3ceec00706c3c444184b75321b1d50263bcf2f0953daf765e0f65fc5ab
Date: Mon, 24 Mar 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742786993
