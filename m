Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601812AD00
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787364634; cv=none; b=hf7Q+T+jsbhcnCm+ptHE9N9HBrfG0/UHSWBgCzLjF0GdXNn+YLKDrSnDLrzR8FXARF3EMBzQ490pBOCC/g5alb2yDhm6Dzx0dJvZHZOnMID/UJVRSMMj+Rp1CaOdZFxQEM6ugrAWlYF56Hc4+LSkz3vbKl7WKUUZVRD8fgv+pqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787364634; c=relaxed/simple;
	bh=/Jqheu+vfAIrG+FJQ6VscK7y5VVfBDlbK5P+aNYoe9Q=;
	h=To:Subject:From:Message-Id:Date; b=Z6aQ58KNhg5ttbn9LoIQA7195R/GDVpw6gmfe17QSrb4nxz1cuaakcoarVPvspmeaSdauqafpaFrWKEWy4orDg0H/ZV5i6Fr8KgwyXiRbh7676jQlB3QezaC9UN47JcwFYtwnhz++M3PDC1xuxcz5JnBTUxQJH5YuHyCeKpU5rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXdZBDMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXdZBDMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73AAC19425
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787364633;
	bh=/Jqheu+vfAIrG+FJQ6VscK7y5VVfBDlbK5P+aNYoe9Q=;
	h=To:Subject:From:Date:From;
	b=qXdZBDMSpyXXjPL3DSzV1FsI82LhM1R7/18WxW3YeNnlGPqq1U71YhdpJOGBr/QDF
	 EitVrKqRRlBSsBs9XvlU2vgwZbmIfbCrQi7nwseM0uCD0pvp54ZI+tubWcuMMZ0K+H
	 5V1ao5DNCOuk/OS1pYKgAzUFbGe3D4FOy4Nt3pL2RgUAmZyO/eWS/86qh6uUp9UF4+
	 yySmnqU2b+ie1/Lx/Pbh7Bk8ToA48+Rse2Uic5Mc4K5OogKN6rrq2VVD3klU8VIYI+
	 e9HZzJkhzHuD+RtV5I9dTMSWvwC3Jo4342LOPF/rXoDOz/L0WylHyBoVcA0Fxy3uPv
	 cD6xxfKWIArfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF588C5DF94
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178736463369.21244.12298572084053535168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cedda4da915229b813d1744a7de901009314cebf231cd2523ae2d9728ed4f2d8
Date: Sat, 22 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787364633
