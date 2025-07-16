Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5C51C84DF
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752641994; cv=none; b=BPpM3G1mjxH0fNT1kYVVyGHb13sErJAWqe+7uJim4Nsq3XkDhozQiECVsm9wLZJFTK0OPi/s/0FlkOueRVPWKxPW4Y6wfttr5ufFPveyedzLjlF5cV8L7Dv8aoz5xFBEiXPdiaKNOcLLEZujO75BGuSFOyVTO5G/5lFMxsa7sMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752641994; c=relaxed/simple;
	bh=anTDf1A5U4xofKBrPHkSXE4XY7uK6hLNrE25xhFBDU4=;
	h=To:Subject:From:Message-Id:Date; b=L4vrOcrHWfX6p9h6KFv69Os+QsppgevJYSjov0DeWEOG+MsDZp81UHTSZ2bI8CRgVk3eJpVbofxu1CwbanBeWlrRcZq3/7TuGaw9VNZmqyB3PsDHvnOtNGKhjtzqSPuoKH36S4xQzqKI4SewHyOGIIQ4/4Ruu7i/vC5ztJ+O7yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsvXVeWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsvXVeWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B1DC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752641993;
	bh=anTDf1A5U4xofKBrPHkSXE4XY7uK6hLNrE25xhFBDU4=;
	h=To:Subject:From:Date:From;
	b=NsvXVeWb76ko2n96Fq1E8sp8ktnfFAt185zlNo+FXy7ogswPuZ9OMRxINlCgYG2g6
	 Ae6OZPsvXLWHRJBo1a6+Mub9J2Xh+vuhQR9j9QOsEjDKaorlPKdTtWJi3AdkEBvmxr
	 FgASDpFb/AOPPWYp0N3xg2ON47BI07XC2pyZEnNaAqkqYV9htivv948BAaMmaxqbKP
	 rz3X0A5i/QYJFdly3clvCEbogVSYOIfJ2TjLrOuMFqfuvKrQ4d36jI17cRFgBBl4Fj
	 8UQvrgR8idyKoATVxTpo8HP4EEEhssCkbpGhTleqRKTRiKHOcwbYuD2N7/jD/ZcqAx
	 X6SFjCvBln51g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9441CC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175264199357.12480.3302863374567311817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa4f64b9af6238e0ece7cc47a3766fa69c8c050d512b5a98c1667c31052eebc
Date: Wed, 16 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752641993
