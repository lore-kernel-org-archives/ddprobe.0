Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9751F4611
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786161034; cv=none; b=pujRN9ma7j90nLIBv6mCGRoP+8AGe31KCzVlLCBSRaiaAxWWlo3GinOHNRAKGcv3wzgcuSm7nfFn4RjIBAJcSrrSJRTAnPR2O6wUPRIF5O3gZfORDoPza9AFn4qj4S25v/eniidDpSJk1hts4wAgoF+7c7Wp5iLRyo9/Ol0ZlMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786161034; c=relaxed/simple;
	bh=6yPXcbZGj0gD1V30bp7wndSMCraRJi+siLx+BS5C9NA=;
	h=To:Subject:From:Message-Id:Date; b=s/dgqM6JeRof3hYU0DvGABs4n7VerM5L4HvAGQTgj33fBXMjXwrPbPnosvEtbUDuHj0pl6Vd9I9QFWmm3IiSCfrGWtR67kVz9wTBFVSXCCff6d4fzjp4Og2S7gZOtMLX3yXg1pAhjXs+uV9mvaUgOdzzqJhXP6AMxJi0Rs6cm9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Quqc7DZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Quqc7DZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD542C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786161033;
	bh=6yPXcbZGj0gD1V30bp7wndSMCraRJi+siLx+BS5C9NA=;
	h=To:Subject:From:Date:From;
	b=Quqc7DZKCuq+4xaq83yTIDfCyM/ie7FxI9epjwucD9+h5q0AvkR2DX/moCLT0y7Sc
	 hAu0Q1YzxPYh2ASt/feDiJLUg9p832ez/6gclaMhonKSfNIsjXKwA+PZ4CBwsS5rCc
	 xGhctr49FRns3NJ7YBlFCaiZnUDO/cu8ZWUhrO7XLh8QCVo2W8GYZZO1LcbbQD9fFh
	 iBzD65AqKB/3/sFw6367wMyGt/Qf92Y0fjoAhYqlGKWAvfLr6v0ulMNntiBfmNSirB
	 pWtcAUJoOJhK/luT/NJctW9nJfA42lsK7udsXOBz864FoEdlTTOd+4YUfQIGecW/PG
	 +aU4Jt0+eGd9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F37C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178616103371.2282.5869218321145716657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27202c156004561bdbb0ed2994e27f1804a75d52ba88968425335d8e41831aaa
Date: Sat, 08 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786161033
