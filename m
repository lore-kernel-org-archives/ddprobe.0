Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8133AEB4E
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784486314; cv=none; b=k49YCUCFVWXWUbzvkZD54M7QPP5O907KePZDxo0DZl/vzK6MLAIKjjKu0kBIG/Xj/C0Q+g+cW3d5nC0uXs8m439Aphawo8FSkKlR7tTJPO2MXby4UIBO2RxVRSsBrCB89wI6y1YCuk3GWK7BuO5auPMy3h2fHaMQCn6M3vVrCm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784486314; c=relaxed/simple;
	bh=Cqg+Xj/Q4fO8kAcMVoeGsueiyIfPGrrZ6COQbxuGZmA=;
	h=To:Subject:From:Message-Id:Date; b=MGxFH31nXUAgqH8zPadB3K46ZEmJaFVZVFpDbtM8qkKjb1O4lmSxTCKW+VPSn/m16dpeiO8KPc0zE2zescVlD/zdsXaXkPXSg6JzsnvqpFaGFipkotgprJBsoZtLwc2Udpxl3qPRdmtdJe2Li+njOOgDmuCEtKCT0odeXxEW1Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frmEL78u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frmEL78u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB584C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784486313;
	bh=Cqg+Xj/Q4fO8kAcMVoeGsueiyIfPGrrZ6COQbxuGZmA=;
	h=To:Subject:From:Date:From;
	b=frmEL78ubcPF8wDkrH+0HijxiZ6dGnexdq8RVVuV+Fn7aGf1UX9BMXW6PYmcaOlGU
	 OZDwcV0rS/tTzCKluJLjzqI6F9eyk8Q/GFEhRZsy5kexNhHOaZRrEdv+sTXS/k4E62
	 ZkfVZMacAn9jIEalDrbzs7+uBMO/7xgejP3IsJTklgFYD90NlYKoJVHvbK9nFVvDNd
	 UqvNa0KFmQNbBrtKr2i4xZ/69uBVetbeyJR1djrct61L2MGwf+0fZwTAk/H1SNTFaL
	 wQyQN+hpvZss96gFbrDd+g92zQxn4lMChvvmoVRbQo0dM1OXUzstiYsJGm5+mcnjQX
	 KHo+UR+LVHaDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8055C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178448631367.10499.4939970736749975893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6354af6d3f0fccec62ed1b0d71043550f6968ace55934d64ffa07106593c90
Date: Sun, 19 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784486313
