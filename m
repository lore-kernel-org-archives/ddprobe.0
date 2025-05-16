Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E223E47B
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747395596; cv=none; b=aabvzurmWpybsl8CzlvQhYcpQqU66LhOO1WbyunbbgIi5eOHcZDnM1d9T1ZWF4TTwhsVX4Jo6J5rF0/xWsXp4MZrxJav3ELiMJeTNd5fmMapzlf351fvw0YSGw/oPE3hGWDLOiBYf6vt2DDcDBfooRVNlGLEmVwwA3xAvib1pco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747395596; c=relaxed/simple;
	bh=yL1lBLwNUwSCKf9aEBBZCJ4Z9LFHgLEjX3zYw4db1/E=;
	h=To:Subject:From:Message-Id:Date; b=Svj/mwF67kMhZP1VPhbmeWVCerKiFEKt1NHEEfpIE5Tu1mAwVyjV5hxdKgMjZDAB3JBfmA4vPA1hRaByBu4VzuRQ2oIC3y2WZxUPBMr7Hz099lAYfTTSusV+PHA84vBVnLpMWkuMhI/xut2UVAU6sPNxGQtjA39C2uvmA16uXxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7bqJ2Kn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7bqJ2Kn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4319C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747395593;
	bh=yL1lBLwNUwSCKf9aEBBZCJ4Z9LFHgLEjX3zYw4db1/E=;
	h=To:Subject:From:Date:From;
	b=E7bqJ2KnXGA3aJKLaKqcTuO5VAN1yJojKq84hoPP4ABcyR0JIvVHJ/0tutMK9hLEt
	 i6SWRIPqnlShHZjrzC93y7a0DOMfnOyZp6bRIauB/VlZxpgghL3XIcitvBJIVkqPqI
	 K8PGhTouRcCoSUPiqLFT4EaX2dpFaw87xxkPUCVwhFsIa7fv4gk693E0HwyNlcPUa+
	 jGQXvLI+B86MlIefafqo+vlNONiQikqjv6M6GPtTDKqjxgTVSIbJLk+57bNR72ZxMp
	 oQ3JaJuLlEmb2HSdNUCuxdWTmBJtAWWUyJlb122O2LyUD6j6gFjeayuD2jY57Pxani
	 JfFbqPVKq4GpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7BDC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174739559358.3737.15453996367460723153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ed4a5c9f850b11211fc02089180ffbcc555322eca404386fa0dc9c618a7764f
Date: Fri, 16 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747395593
