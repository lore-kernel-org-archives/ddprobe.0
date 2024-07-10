Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6481B1EB39
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 05:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720588583; cv=none; b=Azmm4DJZEVKQ8p/O/PENA7dnPLvBf29xUWt610DlCEvG3ucUzmq3jh6fEq1cputbM1GbyqhsQiJUqoT/+fm3Af1DtB/OPxEU/av19ZXoJrd4UIdwjVCflC9SP5WRNnv+L8/Y8u4GtBrLK1sbUrNaZalrZwnMUIxYXNZKzwOwkgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720588583; c=relaxed/simple;
	bh=v0X3R3jjzfIIiuZg8wuMgvCyEir7u6ol8LgAAVXkaYc=;
	h=To:Subject:From:Message-Id:Date; b=MRWd71pGxK6cTTy2r/nBPRZ9nvgpCjn9WKSTe0HRcHVAfaqPL1+0nt+Q/JO2yVKF3jU+jwJQJaQpv40neOo11nanYZNrTfjrnsc3iXpCGJziftKMbsmX6oHsV+fA0hK2KyNeM8VOwpvzDt2Au2grzs9Cfg8xmwFB6gUS6zMS1Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oi/mbbRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oi/mbbRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED2DFC32782
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 05:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720588583;
	bh=v0X3R3jjzfIIiuZg8wuMgvCyEir7u6ol8LgAAVXkaYc=;
	h=To:Subject:From:Date:From;
	b=Oi/mbbRGaBuWcou6Pqu2dNAGuTlm9HQqwygbbn12Zb2f69UCtwZOLalI6do4c68O2
	 oRzh8Dq8cdNay2eRcqIJ82rVFTRz0V+i5k3edL9i+fzcoABRZRHHWA2ZSlPHJ3hPG/
	 NieR63uboYnerq73rNjhmy5Ai40cTwW62vQ69K1U+5PfqXgWaPOX/OZ78qozuR4kto
	 UMG46L/fmtQgcpGFAPsrPkH+IGDxeELTKo+yW2BQUcr6ZyteiCLqoQfFUpKKpCQtT4
	 5jTr/64RWdUtHjz/4MErUTlMR0u1eAGsj3r0tAOhqGJRxcn3BRSJkv7vUGOboJpV+B
	 b3uSEKI/+xKAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4685C38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 05:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172058858284.31233.8363071295574295603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11203bd243a722c5a7a99c29cb197707fd60d082d598f187dc2b6b791dcf1077
Date: Wed, 10 Jul 2024 05:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720588582
