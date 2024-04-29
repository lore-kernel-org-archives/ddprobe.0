Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6388F946C
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 21:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714426943; cv=none; b=mYPYOlJBs72yerLt3m/MzRs043Nen/ymr1Xwtrsy4RQMqxdchO4ObIO3ma58+1DfnD7XH4VRM1c2+ZfzE2+AB0YFRTtfG26LsKUqDGF/JzcBwXvbEKGo7/YpXUSGBXiidkrIfVc+wJWsUF4Tk/Y+H66Q6LZ3JDUQtKk3kQLHIvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714426943; c=relaxed/simple;
	bh=Mz25KrW9OgupS3fk094Yau1m6SSVWC44P0vgxAHElo0=;
	h=To:Subject:From:Message-Id:Date; b=Ajqd+wYoN09UKX56ovJKJ3xHCzbioytx++/Lp6RsUveYfWg3K4OaHjeXfprvzh3VhRf+9RuF3/RFciqhe5bMAHyLxKiQU1D0/irDb9u1dNaNRv0Ru6PFvpmoKlOGqGYOpFTWLq4D7GGxL9VGlPI87s2ywGllQ7tvSt/Zq8osUBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtUwCCMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtUwCCMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA00C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714426942;
	bh=Mz25KrW9OgupS3fk094Yau1m6SSVWC44P0vgxAHElo0=;
	h=To:Subject:From:Date:From;
	b=UtUwCCMGeyUrwzpt7c4KSsfHSqFLrSVXYDRLd2X9EvgjbKhEibyO1YtMdFtKR98gT
	 mLdb9sPb/BmeuEqILg8C5CZ+sXSkhH3A+QL6TYRB8CdBszyBQvGd5eAeqCqAiRPvNG
	 wCKZtgqc7YcKh11aGw9kqAUpxSNButQzYuZKRqgQPZK32K2HJdUs9RTXHfn4mE7WYC
	 qw0OitKl1IK2RTziku8JJqm0MFg/vR1WJNF2GnsXwtQZQSIT8udW751Ztp4DgsQN7C
	 mcc7UCca+M2y7amhDhSRzG4irPOfdp4uWJtifCbkLNpTPb9v5ly0KYBdmeW+QYvZPX
	 8JT8kBNJGC1yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9035C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171442694275.16050.3695238687727944282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b3a2eb205e8b76863153c11cb61ccc6f81921e916dc0fd3e47032af796bc447
Date: Mon, 29 Apr 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714426942
