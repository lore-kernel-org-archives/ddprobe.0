Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0323E10A1A
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMUJpPzy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ED6EC433C8
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700333296;
	bh=CCUgCpT75FoR+PjQSZnQMPic4Uk9aP9jHZltSz4974Y=;
	h=To:Subject:From:Date:From;
	b=UMUJpPzyuJRd42yVelvy8RDtGNgQa5DS2rnqMqwjbvOosdCjpxrJNdHeNBS/G+bkq
	 4WTwGD/hjIC8IEfgJwTuISSCyMGg4h54ZNttnnhqzozZQWhMVTjqIBHuMuoKS7/hXh
	 AB1EoRNJnpq9pPizzegmFwyAkTh4Mx1PSYhtTQP/7TsZCzTaY6UtlWAuGpznErppSB
	 +CTtBlFGf3e+5/ySt22V7bhRPuSqJeEOBD/jAU6iUKHcXWnGJ5yB3DFSJu0zo8wvhv
	 4/lxTZPF5SlnRBBv9lNZ46742K0aOt0xDLsn3qlDmJtgckCGJ+uk8+oqxKLu2+sE44
	 xFsHRjh+lEKLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D1FC2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170033329638.23537.17485834761017607550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e307683a8dd1948e6af4f6273bbb8d1333b2023ee5c542e97d4138958b721d8
Date: Sat, 18 Nov 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700333296
