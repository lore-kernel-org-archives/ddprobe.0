Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B1223741
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784246914; cv=none; b=qQI9czTh3wv96mZ369eOE4g2NFCPtKFE75fYZN6MYUyPnuGa+y1GYRxMhRW3q2na853fCEpv/DL7UgGmgkoOoaspM+QRRC9NJAo+PU0TP7EiwE/gZ5EwWKt4OJFvBIi8x44JgWxdijKw13CyGWV5PUAsSJo6I8m31IqY5Vuv13Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784246914; c=relaxed/simple;
	bh=vMfRe+JhjbahV8ysvRexkqyIC04Mxr0aVtny5vH4364=;
	h=To:Subject:From:Message-Id:Date; b=ajIbdEUKje3HN3Hk4BqtJSS77/csNwBLX4i4UxJsa79WL6rfIFR3Xz25E/AbIym2OA1wmysym3YAb9Xpwh0F7c0Kd7OHtd5ruHOP/Hmve8VgmTxzcGTlMGvNMjJs5Vk8kw2Vs8PSNnj+2XNwXixq/SFLAm+DYjsDE7KQAbH1k6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBMCWa4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBMCWa4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E28C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784246913;
	bh=vMfRe+JhjbahV8ysvRexkqyIC04Mxr0aVtny5vH4364=;
	h=To:Subject:From:Date:From;
	b=gBMCWa4ifC8TKErohaofqzNsebXX1nKXgTtMq+Pds0TmAtpxA/o9Ps0rumEFBL88X
	 fnX+eukXquKHZQvNoZU6e/6A6Sav7RKla5ilBk1qbfG5/3WEgtZFD4N1+XfCNk/+0D
	 oNrpxh+OuhxpkYJBzwOscsXuVzC++Bg6lJNlrvhEH/O4O/8ghkIQP7iLtKZ9LG/QI0
	 iQR1SC01jyQkSvmAuweJ6WdL2B+RxeRPCyKYpICf9NHzK+lqKsW8RfGteAawCihV9f
	 HYOdCJp0b6zCWr+BUSUajqpKxBj+nzFNhE01gT6+u9ZXslGIxuZ0e0Py/YT5M/q2D6
	 AJOn2ZY16u0bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA31C44512
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178424691368.16187.5637921056124010461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35526d6fc77047c4412ba870716616d4ee454dfd2522800009935e2bb52da5ca
Date: Fri, 17 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784246913
