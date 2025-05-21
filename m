Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2435B26D4C5
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747832395; cv=none; b=PaL6Ew2fUkVJjPDF+uUItfXAtl75I72FFUKQE0H6W4gjBvrI24NyhJ2eAwetGGe+ZTxUvU8CqsXOBvpiiAC7srbcARYlVuPF+3HB7FLEAOQkVq2NOI2z8kNfSo7w0YTwL/rF67OXPwfqZcEv+i1a986IBPRFDL3tYTbgJCbMEsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747832395; c=relaxed/simple;
	bh=YnaDXkW+L+GDTMWuRMRH2nUmw1Pq1pcyMkzP9ZLg3lg=;
	h=To:Subject:From:Message-Id:Date; b=Xidi5IVCtwEi1dkLCJIgAXomh1TOARRRXutc+RMggfSjocfEZF4ecgHldWY6yKPm4lmt71j7iFWKgQuMoTbzWsNPJvXHMMDDnscCMSHGWnYeJM5o1YjdYUkX6o9tvOBU+n41H2o0iEcaMS+Nea1M0eClMREGqxWT51S3E7DuiSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyvfLAq2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyvfLAq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A097C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747832393;
	bh=YnaDXkW+L+GDTMWuRMRH2nUmw1Pq1pcyMkzP9ZLg3lg=;
	h=To:Subject:From:Date:From;
	b=hyvfLAq2CVy0gostYF8Fn+vZge3XGSthYpLNE8BuMCa59zoPzvl2hTFEY30BQQDAH
	 kTwin57Wfrx8WOsykEJAMV9ViQiMwuVAe3lMSMPeFyeelPDjFdF3gdnzc0omt+XLv+
	 0WYlq+8s9S1VOAoVlmxQkVZafLHqXdJCwkjWPPPgPsKJes4KS6oFtidDXHsn5yVInR
	 iluB2nA1RkRCcF7S/TTOs7YRw/hZ0y5MyV/ESd06uq3JyQPXcDKzp7jMmdyC+rWrcK
	 weJTJEL/NS193zuQRkT7bbhvCthU1m2soFC40Yjmad/xLKwpgvj1RSp1mUZwZ6ZW60
	 FWyPf68aU3STg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7EDC3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174783239357.3755.14435139746598248944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cf9e21269fa797a3bf6f47c40b8a7c44c077adb86b903e44efe9017b24f06cb
Date: Wed, 21 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747832393
