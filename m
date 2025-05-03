Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3A01E5B97
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 20:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746302995; cv=none; b=gJafXhMDKPAIUiZXq2izZr6LJ9FMqpIuH4g2bYVRQcXRhsH1Na64j7RiY0DwcsmvaochCJBkHbJ4zO7ZWbMdwJs1tKUziZDOzSj5oBhMh0k3PTigfmJqO+D2dclFtewq0Qsl2oBOfNEFNna2xk/3v0UlgsKQ8ESPW28+JtsHVyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746302995; c=relaxed/simple;
	bh=89lLT/HCP3ROgwyTYpBmda0pV90YIQJ2IFpdJtwJd8g=;
	h=To:Subject:From:Message-Id:Date; b=UzYyYzL+3oJD9BMeNB1TdxswefD5dMRLmxsNJw5qzkXklXNhpq4f4l5Ko7gid1sUcoIasA7Ud0LY+PsHFTnFh7LvLH2oBBJsH1mO6tCmzgLKcg8OdNNyPhaCRceP/P8X4afy/nT6Y5CkxgdHxoVQ8EwsWh5BPRXmPrQ8UbqtIuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBvuy20l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBvuy20l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6493C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746302994;
	bh=89lLT/HCP3ROgwyTYpBmda0pV90YIQJ2IFpdJtwJd8g=;
	h=To:Subject:From:Date:From;
	b=XBvuy20lanA7tTJI+hL1XPtUs09ILDsFgylGtUAK25OLTgIRGDiZ8eqfeEDcEJLX2
	 KySbR1dVhFWD2Yu3jO0HwS+kubTHG0G/hZkmGAqikLcBK0ejdiI2TzwMpyDJDmqe1h
	 m2XW1/TZbF4oIrM/nAGexHcUOzMuwsPkTMtDLf9SxgbLXKcAgOzJY3dpo+DZcdIVQK
	 loOwsiDaQsSrX13UkxwAy09CtdDTcdi8iF+nT0pG9774n8yX8JHd5weF51h0jGJ5fW
	 ac5og4CHrB9a/MJ+/4MwfQDQu3FeYP0PC8nZBKFb41C+yKV0XFuoQsGouuACeWsx/i
	 MtP3I+xHYpfmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ADAC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174630299357.12581.4496776523790006823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a995e57af02ef6805cbdd449b741c7647ac294056ebe212ff9b57250dd5acfb4
Date: Sat, 03 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746302993
