Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E70C485CDE
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787678434; cv=none; b=I5V4WohtdqcMhem6HNYM/2ctBiTBl7gYrYHkCgLYdPGxdV6GC5V/DTMK2tiqICLkZUYOIVrDwaqFnwqW7ph/y3vFYNAatAqjoVkmEG5UpFaOhe1PEo5qOukwkvbttKfBUoOrfvlXABum/6FIFfE3lQDuQG+NE1PghudrUxaFpjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787678434; c=relaxed/simple;
	bh=uHioFXIJzUuOxpI6LNHfZk9esGHHMvyDyEDp9Fe5i2s=;
	h=To:Subject:From:Message-Id:Date; b=CzIAIOYOzMGDtCPgBpW1anqfMhSodx9uqAx5TJMoEDuhxbcGC+RV0Dm75fN8xLfoLlBOVamIMUld9P3EZHbPC3kkBdfbHs6TQZjDZlhUU+FWzw8LCb84WkzPBaVnpumJ+oz3lSyFxFDB91nOuXiNq1xSUvddwDL95r9K9BAGZXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ps46oHdm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ps46oHdm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD021C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787678433;
	bh=uHioFXIJzUuOxpI6LNHfZk9esGHHMvyDyEDp9Fe5i2s=;
	h=To:Subject:From:Date:From;
	b=Ps46oHdmYqaKrqS4iOhgBxaJUp444SI1YfaO71xW56An9mDtdMelzO3egmt7ZdLEM
	 ZCkPxnBMfDkEOi0NqKiXMU4+/9MQBqNuuGBU2bxYKcLjK9fad7jmGbaOuTOWjWBEIk
	 nlzez0wH2bYEMCOW/m068GvYcsSbq6tfcou7fBrAWiR80xleTGeR6aY1ZMx/PMBtXs
	 8wn+NxsDaHUi2o19MJCB/nLkpx00j5SLAg4GTwd2WwWnrA5miR3rLWWZffJunJCooL
	 6MQV3pIw/U8mz8Dnahkujzi2yJBOv/cBgdPusr/pyNVMN0OrUxhT7Il9gx2e+NU3p+
	 8tQEQWHfTsP0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2F2C61DBC
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178767843369.19979.11272461232533624626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7aceca1f467549b985dcb94139ca48bb447dfa336d9edf366ac917dbce2ed6f
Date: Tue, 25 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787678433
