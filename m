Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8CF2FDC41
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762697994; cv=none; b=qklUH+upaaFlLAiWtehuS/Zrzru0uVUUmR2lp3qWir5I1CAU0QvZyueTd0d6JVo+Sv+nQVkAfk0Bgqy3xZtrAwO6vrJTcPGxNPCg1kAb9t/+8rK1+o44En0WQ5iOeMzrNLZpaHMjnclydXgfgvTV1ORrZ+NHyz1QJlZAaOHqMyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762697994; c=relaxed/simple;
	bh=RYvoEAhWWJjk/as9acFP4v/IWQjo75+bBZEPt/w3/a0=;
	h=To:Subject:From:Message-Id:Date; b=eHzXu49UQPFtbqtlJ6MFOSmFdlXkTJ8wSIawMwxI7P/vO5qosvzjtVuUJBmzMMkKJFCGyaEaNqWxPZbS5ZwuXbaMmvKPTmy6x5IYX5Vb6c/aGyPb6KaGKK8Gza19jQBCPpUAEs5l4EXJOrkFnjAOvVm9m/+5lhF54vQDRWvTVKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YuMJHjmg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YuMJHjmg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B1FAC19423
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762697993;
	bh=RYvoEAhWWJjk/as9acFP4v/IWQjo75+bBZEPt/w3/a0=;
	h=To:Subject:From:Date:From;
	b=YuMJHjmgsZb82n9sHiYiTbC2sz9dV0SSLyYyI8NyvEgwGVOqr7AghCAVG9eIYkA8X
	 izAva3laLnFMp5zCGiLUp1ExgwyO4fe4cDv09zzreqETaMH027dDp4VkebtpBbuI8B
	 8ZoB44py9R9VHwcMTh65aKSdTO8F5a6Hc8rUmfgVrdGylid8m+r85vRDEw1kwfuGz2
	 o/Uu3DdbydxC7uX2okDa55Hew5puqeMPLGpVroSR1qTekTKnDingC2n8soDFgBMtkl
	 U5YrWs7DFnceFvx833Q1fNdIjvnivls5FiG/YD7FauSriOFiNYdjQf7+EXV2M9XwEJ
	 O9MSFWW4DQCFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEE3CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176269799358.19921.10674285596645845999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95365883a204536c2e604f692eeb23137dc90e5b22c24b0f3601ebf7ea4a205e
Date: Sun, 09 Nov 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762697993
