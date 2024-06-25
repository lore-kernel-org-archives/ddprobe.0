Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3747317C7DE
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 19:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719342803; cv=none; b=ju3OTss7sRxUwKJj7Kihgv5ZCcH8ErqSu3NU8UzSNpK7TjM6DZSDOY/cGt82DMnNuUOqKP/XCO293cFlkqLyM1CBTX0RRwfr8RA8edCZobeON5O1fANKb0jhabRSJ8Izi1FqiKEi7IVX70bQR8UtZ7/4Vark7Wy6iF14PXRTff4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719342803; c=relaxed/simple;
	bh=7s0JkBZ0x6VRw08WHumxQQnt/9L039FiioMRIdjUDno=;
	h=To:Subject:From:Message-Id:Date; b=NNKkQLgZOp3C6KLjV1IzHdKJszU9G6fcaLnbzThGOf7+A6jvFtPdgY/xOAXoiTdyROiv09hT4c33Dpv2Orpq5i2sM3sIkZHXrkEx3a00n9o3I7EYJ7g4d40eDZbJt8fEV9DkhDS1kFLQ5C5UHjU5tndiDwqCJUWJCzoM9NGVyjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Te7FwZbp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Te7FwZbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D521FC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 19:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719342802;
	bh=7s0JkBZ0x6VRw08WHumxQQnt/9L039FiioMRIdjUDno=;
	h=To:Subject:From:Date:From;
	b=Te7FwZbpAxzY2NM9TJCTvWk9NP3flmCJCVF9fC+LB1tnGxj14gxC8q2yByiK38fvM
	 nk2YtV/MoMs2YBxD7+oSMW1xslKUVL4KuWWpFhi4AgczgOaAWhpbXZpG4V7Ai/C8ZJ
	 MhSZF6ESaOD5xEioytDnl7fCvLlQ1wXlA1cRamqPts5ZAwV+7IJvtqGc1YR7i3KvOA
	 avD1aCWuB2bLotWHAdmNDD2iNmuHksxGzE4E4LBHXpshLzPxNNADn34UyiCW7wlyeZ
	 js9afqap+Qy6eWm8TqiFbHCaMWvikHhah51XlGPwisDhjfDw6uBktu8hIdB2hPH96a
	 lwk8y2qyF1Z0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D59C30653
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 19:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171934280278.20918.12662320351377319613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63451902bea80563f1be9cf69e19582b2c769623e60217a25773ddb105fd6600
Date: Tue, 25 Jun 2024 19:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719342802
