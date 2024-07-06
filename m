Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56337134A9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 21:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720301783; cv=none; b=gLFf3si5g0VeSFqHRI2BePNzfazOhF598x70RbseIEebWz/aKrZO5LXM+gCoKH5+zVmUVdtGBpfBm/qQtNTMOFS2nT8FB8FxCxJtbjD50HZRMQYnx6JEFPVB873B17Yp/2iStS43Sd70w8a8iZiZTFQvEdd6yT/Y2DeZQ7WHYyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720301783; c=relaxed/simple;
	bh=Uf6A9LM7qjs1Z7ERWupwAPv4RjJWwfnK7L9M2/FQylY=;
	h=To:Subject:From:Message-Id:Date; b=IGyROwk/fpW+XpP5AxwxCleyin7HxXoxo2LXke67bkJwd2Wah6D9QaxiIJ5vUXclmbZIkUIpmWxEEGy8RRh4cKtl0lxlFWv8s4I57z+5q2VoEI9HlHOHPhUoo4+Fi/CcnEtab05Dd0Vl/Bl0UkAQr4MRk6CKmuKuVyobzqE3Cbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQ+v8WgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQ+v8WgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3639C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 21:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720301782;
	bh=Uf6A9LM7qjs1Z7ERWupwAPv4RjJWwfnK7L9M2/FQylY=;
	h=To:Subject:From:Date:From;
	b=YQ+v8WgMix8MREhVNMjLm0H2stnbE+S/ROFlbtBdPBOPSL/6llePR2DiKG8V5nKK6
	 r6G6m6Rj6lSZVTBHCHnzcm7fzv7+MZkInFLzKBAmiu0a28kBOxK+7mDlTkciIoE8Xq
	 Lj4hHxLMqFBXQKsDn9X93Wzk5cWqZeNZjCA+5YakXrORruD3trd+6FFKF5z/QGjiWQ
	 skDUbGdQMZMhZB56CJH5yIqol4EO99hT243JmSmXmfPp1Djge04TfHPU72sgtn4JoM
	 YkpNNj/xnCTXc4g+6V3zMqI+VmR/QQi0TWa5GuclQJmKUC2w2luCeX2O4YPZxw6NyO
	 u4yVFMW46aLvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBE23C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 21:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172030178279.15656.10443256312126739415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d85cd4bc16f781749bb6745b57d2ba75e5ca37a05a841fb480e7ace8530667
Date: Sat, 06 Jul 2024 21:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720301782
