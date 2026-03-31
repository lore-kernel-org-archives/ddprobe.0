Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2834E1925BC
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774925694; cv=none; b=IoVrT5IQD4/5DbDP1M1+NlghXJsOkxxavUrJ2j1oktZZufxWt94+NmSVkcsJu7NH5kBiX6Jcu1UWcg8Ez6ljZNQQszJSSZJA2qV9YEK1e/O26bkQgoGf2z75120sMttejEVxPM+hxeZhaNBrfV2c7MTgglBPMRl/lmBk9MJZfcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774925694; c=relaxed/simple;
	bh=JNzKbDtJzVmQuCUI0UNiX2dwb/niK+rBAv//XtTd2dA=;
	h=To:Subject:From:Message-Id:Date; b=Sqr+WnVrvDlBCzZxc/MOMC5XRhkriqrxD2BOU4uacgAdAtuN0rFE9Hg1A1yrYOJXDG96lEuxoJY823gX1OVyUXcovrxEdB4YtyEyZndaWq4t7xvcx3lrqH/5DXsC1C7gQa+vuKO3AV5G6gPfIyQj506nxh5CZR4xd5aXvJhSD10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKP5CMc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKP5CMc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F5AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774925693;
	bh=JNzKbDtJzVmQuCUI0UNiX2dwb/niK+rBAv//XtTd2dA=;
	h=To:Subject:From:Date:From;
	b=gKP5CMc8tzjyw0wxz/UO1PIk8rL19iHF+t54gPMhjNOdJCCx9BFcUxBBro4TCFufr
	 Qm/4cRv4+6q3Zuey0x51a6RARYW2wVfbnmWxKGolhgj8D4E0LrbLsdKdycxHC5YakV
	 Nrj25K9EOsQMBiA9+WeO9KswqrJF2Br2Imwb7i+wApUYMiLFbFKbS0I8NqBkjbqicC
	 le8+eWTcp7GqSoGn922XNWxdTnZEsZjuwnVWlQXmj3rfHmvmEi/LWy3L0w6iXXCGBD
	 nfbTzvvF/cOPAxOSEpc3jDxP8OXuUog5KFarf2fWnBBYxMTq/kGh9LsIjVcYuhydFu
	 0SGRhGQusulVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D3D1061B2B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177492569358.10246.13128557788887275365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6833e206eeab041547da5cdb2fc3cee540a1cf4fce240201a2c76123ebfcae57
Date: Tue, 31 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774925693
