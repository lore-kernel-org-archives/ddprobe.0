Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F11314EC62
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724828754; cv=none; b=I2fhns4Fwz5Ye4okgPo9apkYLNK0L7uq3BUs7KFM0dcJxEyZgtVbWEyfi0p276NRHB65p8eABYFgdVsPOTiITtNq3EMPW9b035CoiEwzX+4XDaQzuSUU4ILia5b+OEqAhI0KzEOfzGsbpjj5Ygqs40/0u7KIOfgItm//5Cc/gzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724828754; c=relaxed/simple;
	bh=Zi74UNQL5fGqx6Uru4cXAKXfZuNDw8SsbjNXpMX8U5Y=;
	h=To:Subject:From:Message-Id:Date; b=MWoWBU/vtAOiYi49mZaerz+yDlmV0VQCPV4Q7OcZIfyvS2x2QSHACK05YOHO994rtsSqCoES4JeVCMo7uJVehK0oi65WQF91dBzJ1/pbeRxeWFRGpiqGhS/SmlDCXoD1Nk8HhnwN8XXEW8AC0F3groIKsDf7VPe4x/3L009Axx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmWzuF1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmWzuF1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4EFC4FEF2
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724828753;
	bh=Zi74UNQL5fGqx6Uru4cXAKXfZuNDw8SsbjNXpMX8U5Y=;
	h=To:Subject:From:Date:From;
	b=UmWzuF1wUlT8jQBPOXv+znwtQAIaLCh82+DLv0JqqQazSWL0V7emp4hd+b7MTErTr
	 v3xw2UH87zVrSitubIfd+k+m3O+gs1Wd5+Sd6orjm4QT5SaegZZSMZf4fi/iwmcgp+
	 4c2hwSR9QCFiLAhZ8MY4KeQyV3CCJf3gFcU1wKyGRWQjBW8U302nROX8fAXGdr8QSP
	 /njH6Jn5QDDIs6UM4xb/sTQn6bwD5Xbua4uLMOy9SvCzgEAYTGC2v2UGPiukwGvpgC
	 T0Dll168v29nGzAOmwuYeHoRwEUBfgsOZHegUuK+sMvzPsYqFoAvw2y7JNxz2tERMb
	 xMdOy+/fgGivQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958C8C5472D
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172482875360.8144.3352666343208638761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db28f9958c060bed25bfb99d90c277057276004bada1749ffb8bca3cb9640c9
Date: Wed, 28 Aug 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724828753
