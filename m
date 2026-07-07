Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379A91B4223
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 16:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783442314; cv=none; b=dVn/zrYXMXWaejzdYTgX9LePUh5u+OokYa27e+dpcTtKtO8kMT3AyPc9djTs/WpfDtQbR7tht2Iq4bPnD8w01qLOA3FSANcS+bIuqlYtVxZp1CcYoZufH4+JrnI+6gI0IXNeG7tjopV+6tmIsCiofiGqj0feb0Qk4HhTpSJgFTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783442314; c=relaxed/simple;
	bh=ZhzVVaQz/wOtGn7AXAI9l0+/MVzQh6DLORbmMQH7yxs=;
	h=To:Subject:From:Message-Id:Date; b=hgzaXHbwYLFipOOdN35WMsisBUPuoMFBTgBPRECuHS4fhHarA/fWSibV1NeZjDVXBXqnW53s/WOJ/AdQBhoMc/KzeYEaZxJgDF8YF9ngXRulQS7WsyzZkK+3/lP9GOaKiZNYGpSUUV8V6J/eu1PVcrPpWNm1rDbzsCPI8xM4ewA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ru3l0N5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ru3l0N5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF7BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783442313;
	bh=ZhzVVaQz/wOtGn7AXAI9l0+/MVzQh6DLORbmMQH7yxs=;
	h=To:Subject:From:Date:From;
	b=ru3l0N5PjRAugdNpXGgfG597gS61xo/eypugoNEp3Gn3K2Ro47/VOXPQ5KluvAM/A
	 LTEWQ/Z7dsAiidyDgVldOeJrvYvBcRPSySlqO3ZsCKdI1GjzC2HvBKCKLv811dY2Sm
	 UiD4MEu1vEeZk7U6zCvo9a1InKFD4kXKKWGH6XShCoteSVYRbFmqHs4PC2rhUDdF2w
	 k+aGVbLJn3pc97kVrGi12K5VIjmC4291spHE7kdrHMvVl6UlMwM5NE2l5WELY3NTY7
	 d//sXy6uo+4W1ZDH4VIJmttGEKeYDIyrJTdRfHxRbYEkOJXNRPn/+aWekAZReQM/vp
	 9Q+MI2EAYMPhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FEEC44501
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178344231368.19808.16714450121616193367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93d8eb022cf4b0a7f51ed7e310ea7fdf805855718d2ae39eb213304d9223fdbe
Date: Tue, 07 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783442313
