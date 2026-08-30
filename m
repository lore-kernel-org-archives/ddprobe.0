Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A9E70809
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788098434; cv=none; b=PhJqr2ZzGE+0H2t+Yo5ikgZuVYtZlUWaydmP9yEiBnZiRMHHyjJRv73wpzYAWkHvnOgPyiRE9AHI3z5Ck+PhysRkQqZdHWZFN9vZIjnanvq7goK+U6FeQ/0RQX1gzK8r0IGDx0qlHz4PSa4VhDrOA+Jw8NsA1gPis+T0tSG/qDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788098434; c=relaxed/simple;
	bh=csKcVKAp8GOhbXTufYA/XLHZCmMN2EbFRtnIwFV4c3Y=;
	h=To:Subject:From:Message-Id:Date; b=HwmFxTcgMlqhw5LqyN6G5tCVG/ewBi4D99VlfeEWfQbBaKQ2xYz0UjQMJ/OHChsRGT8kGXRJiVWUkDnvd28CGm54Un3Vbvp0Wh4sZlZ3iMRo1fcw7Qmj9/9oinSj8M6B5nZl9S7cAN79XR74PVMaZGn6F1TBaVnmiV1KW5f43A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtk+hVZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtk+hVZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2323C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788098433;
	bh=csKcVKAp8GOhbXTufYA/XLHZCmMN2EbFRtnIwFV4c3Y=;
	h=To:Subject:From:Date:From;
	b=jtk+hVZWxrzhoo5Tkt7KZIBt5ZkXN6td8WtRtWKUSkVyxE3ZqRltVRz+Phz2Rd312
	 Lutfqa2xet2888ZSUs4vxDslXGZGoX+IHqPVBMEBP+PJkPOQrmB9iEYdbouFPuDuNK
	 RvQuWSKlSScxBGvw9z3MFHrSar7L3bbR0bCvOlwF+anLvq4K8vPCtUWsZd6Ix4ifJQ
	 vNCxFRWkzmeHusmNk0QqpFYLQJYki7fbZmz8sdgwYLwe+nxcRSTo0lGVz6eoWHhoqi
	 VrDSY12dyhTahjriwoaaJ44/u356cUyJkD+83vJwW0d/2NjTIslhW64lxIWhYhyqBX
	 xyQV91DCIv82g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFF2C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178809843368.14663.6617180383272380236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4134e9ec79e59380db59de4417381c760886abdafb45ccc577e3129c6166fd4
Date: Sun, 30 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788098433
