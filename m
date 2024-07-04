Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AA36CDA1
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 04:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720067723; cv=none; b=cKHFYVd6gu9CFVNy3D+kFXSJqsX2pFmKoSuWwZam5xleZp5Iw+j/lnXFLXpY91Gy4vGvCcB3fyoUAyN13cfF4sc0bjAaN3HA/PS4DyQYwHnd7KjZ/VdZJoJ2rdOOBkemE0+zrKgPvsndjTSaAolTPRK2rhjbgGtkcmq/C/F0Bx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720067723; c=relaxed/simple;
	bh=L+KzzPUHOHS3qgHqRSHOSsIuoLO/oeQcK1uap0Xb9e4=;
	h=To:Subject:From:Message-Id:Date; b=kVWKYfHq4kmhrhjzgNhXN9Sb2WxUoaxS/DmDDps6oInydEih5n1xdyXtxxg8vfzzCLdJFyruIURunpAeBTTvEMBXiSbIJUBGNNKFptH4RUwZ/GP5ufMng7cJwReO4EJT6QMKIKEHZZaMxZlKXOkU9u1wKqGXINnIkAaWtBVarfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFgErQMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFgErQMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6077C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 04:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720067722;
	bh=L+KzzPUHOHS3qgHqRSHOSsIuoLO/oeQcK1uap0Xb9e4=;
	h=To:Subject:From:Date:From;
	b=KFgErQMehT6heymM+JwFIXPWVjCXSoTWHFebRmpN2oIXej5eqd2S4nRqIE0u3V0I2
	 lbg8gdOY6NltubIfA/rBk/yxr4p4l6/udAYQ2p436CjKHZeTaUn/iAjJ4G++urZj3q
	 D//+FU5RyxHTmBR6/w4Zq7trRZL49B5j/ol+WroY0jK+6kS0mvVJrJt3G1RpigXCh8
	 cU6bkwhgl0sYdyb+7MvQIKI/seojnM/9gWYwGUcrfsRl+HlJOJNKY1WlbN18GXI7bV
	 gfvqPHaJeWx3slQ2XI5BPbQdkRfyH874ZHoiKdeLbPgc1T9KsXL9uOu7lNGUa3mq43
	 KPLg221r1hVOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C61A5C3065C
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 04:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172006772280.4601.13459246871181263638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec4a587f3918173595bc7e796d06dcc270c466978bc05d3045c2ded70095265
Date: Thu, 04 Jul 2024 04:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720067722
