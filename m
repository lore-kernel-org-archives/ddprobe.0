Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2057C214A78
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754944794; cv=none; b=vENJBeaSRxDnOBwuSt114px8tzebNZAv7aXjS6R0JpPMwc2GOKpxcHTJlYwKcSTTeP70GqqOA5U2Fxb3Uodstps31pqwtWj4cta8QAUPtKi1ne8lOtlJUCUfkL8jQmrZABDISmFC7kTThq/lQAg3nkQVjGj3ume3wKX/K+s3ZD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754944794; c=relaxed/simple;
	bh=e7OAXIT+gRep+69iMEJNTKKwovFU4Fet8Lv2Ib6T5YY=;
	h=To:Subject:From:Message-Id:Date; b=BL/yQSUfpSKMCVThz3cGvHiTw3oCL4aYyApgBj93b/aRm0TSEG7HA+sUCq88tgKQTllRVbr+V/K/bKoyiKYjFAsXx4X8Gfk+bw8Sr2b2+RwNn2uvssanrYFw+YwUIQo/rf0Mdk+sKXLf4A/CvX+xzXRGdaSwHvqMABSW4l+PtBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgBd77lN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgBd77lN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B62C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754944793;
	bh=e7OAXIT+gRep+69iMEJNTKKwovFU4Fet8Lv2Ib6T5YY=;
	h=To:Subject:From:Date:From;
	b=YgBd77lNrkxDQhh1LpLj4ylePlo/BBy/braUpqgMnF1vh7NGyNMdlh8mJKQJ1dY0c
	 nicWWqoaBnONageDxPsBFLja6kGMbD4vGgDvFMdnJmStQJ44xKJvRjYay2Z3xC/pV8
	 Dc54aWBaCkXYbwyA594bxGEgfxqR9qacQFUJ/+GswGN65WJZOsfrejWgX89LXLtTae
	 2aYBhQBYaOlnngPc1mna3eiPuZ+BrdUJbAelstxz1PhTjFS7Psb1gFYX1Dhi5KOpem
	 QWt+K/BT7V9I+dwQIwapFmG1sTlaK5/x8xZYFrfYGb0ji9oNVKjngKKycBiI8VR3IX
	 WOnPXNslTmatw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D9CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175494479357.10277.77139093219499941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6570cadf83950402befb3f3d3ad8e8a01be7890c1806e0a993785b40a2b56f23
Date: Mon, 11 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754944793
