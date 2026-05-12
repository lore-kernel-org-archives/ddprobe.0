Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B47B2BEC5E
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 21:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778621434; cv=none; b=uHU9tCrodhbwGFcC0TObylOQkcQRTH+azhLFOH2NZDUzFYL2SKNXB2KAo5X4L4RIl0/1NnEMELynmA+TjQAhAFoytwwe9GcQhwYjoqBlM2VBvQlxB8VVZPSjBELJfkP/p1VYUFYHwotdcismgc044s5HA1051Gskrf9LOKSe36Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778621434; c=relaxed/simple;
	bh=I6tnkw5vHzJWD+8Qpp03jFOhlgb3jbpdC+yBwMOdr7c=;
	h=To:Subject:From:Message-Id:Date; b=Pi4E3UFOGjJZqRg1HING33L/IlHU3vSokfilf0U0WNaQ8wFOpSnfjiAeTh0iz3Aok/te0d9P5DyD+A2iihC5Lilfin5T284VvySAKdAOSATVrcLq+wHU2eTRLCpPszXNwO43dm50kDR8f1mjAa2apBRd6e8Mm/489JL7bnE4G2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJXeD2wI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJXeD2wI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3CB5C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778621433;
	bh=I6tnkw5vHzJWD+8Qpp03jFOhlgb3jbpdC+yBwMOdr7c=;
	h=To:Subject:From:Date:From;
	b=EJXeD2wIwV643GNNTcc6tuWDGdyQ8pLGUPjoNRvqdDQZDoEfkXibPLJjcbE3+CPnU
	 hL73qbNYp6L2EoQW5Kycsgb4krDGC9B5fUq6mFchlkN2pLyKAn/QIn9dgTwEF8brJ4
	 nBTsOAnJd8LWTkFx9GtnufOCn1FIdq7dWH2/pLfeGBhSZM+MEudN3pzxq+wyI6qhCI
	 25MUpzD6riFaSYV6yYA4IBCxA7tKhnnvWEKKg6Lh/0l0OTUb/e5CP7HsPvqyqdWwms
	 avih+DddIZurY6DqaM6kUHLqFfcZNFBcVh1/M0l0YXYpOvKh8YKgK8bfCDd33Xp0c/
	 FDcveYRqBjouw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55EACD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177862143370.8852.505895221239293659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7418a7084b2be54d96d7020f2c5fcdd45cacbaecee6bbbfc108bcd7a9bca410
Date: Tue, 12 May 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778621433
