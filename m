Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8F770805
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746895794; cv=none; b=FSjrO2Wp+pyQfWsU3P82fTeze49KBFA8T4yFvCD2Lqs0n6TNvAXOTG1TaXJBkKlMf2N6xBvSulHBD9e/tHSkJEZ5nlohHpdkzrydginzx9ly+McmQRtX41NUcwJT23/hbWoS7b8gx16ZeLYhxRhlR7VxFpp9WD3ht9ojakNZSQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746895794; c=relaxed/simple;
	bh=l9ds880CitQ4DU/F1vr99eAmOu7oq1gFHj8ONgFJyJU=;
	h=To:Subject:From:Message-Id:Date; b=bdd2XPmD6L5pVSoycKirUHTybu3oTPH6S/mfZmuuKjnTz8tNNX4L3c2JZKkY/xewQfeZDstj/Sq2DYJlbiqBLFdIHef9qKFCLz0jvU4fOTGMFY+rDNoA6KwWbWYH3WCorfwbKy9SBlHBMLiprt008sLZTsGfjr4zRXHBqGwwmEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hb+cXinv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hb+cXinv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C68C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746895793;
	bh=l9ds880CitQ4DU/F1vr99eAmOu7oq1gFHj8ONgFJyJU=;
	h=To:Subject:From:Date:From;
	b=Hb+cXinvLuhiav4BpVG2MNF62g0cQugYrBFm1i5B612prlDjMPAWe459vBu/RQAlL
	 lu5pDCXWOXcptSPII+g9RkglkCoz1G5lKkoud8Ju/yYfMQXX0FRcQGru0s2eypRWOH
	 G7r8a9T+AuHtGCdFUXWYxOuxXOdw+hga2d3+Bx7AHf9YWI70gq9+M/nCuuiCpPr+AP
	 j2T9fu8bNw/VCg23sSNqrn44NzFi9SwdI39YcItLmCPV3ZWEMkWD1HGELjt9aWSS93
	 iJIhpuP9BDpDIM6B0LGF4uZ33yG+FY2cUUwLbCcMscG/sQ5RcmU4NAwZyQsGTXzTVd
	 /3ffhZqPzTnrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9141AC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174689579357.10822.2299218237885910783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6d8acda966db2495e5e2e6845f2d12b6e2e122f19abac52af340fe6edd6b033
Date: Sat, 10 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746895793
