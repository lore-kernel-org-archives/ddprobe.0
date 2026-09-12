Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 965F54746BC
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789210834; cv=none; b=j/E77HqtCUuMYu0zPpMtJOKKiN67b9Rg+Pqyo5SsseJLetVqGEjm7kR2U6jxDWA0alPhqenJHI9MF0m6j2BQUxuB4bnk4vBe+UrljP7R5fJ/QO32WXWywlY0S4GwKzlloZuoq+RvA7tbSak738d/uHFWiL4dkDZOEQKrqortmfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789210834; c=relaxed/simple;
	bh=idQ0rBA10C4bfLCjEHfjAzz4OtCCD0q4YKv7CKNTSxA=;
	h=To:Subject:From:Message-Id:Date; b=ZvULUNBrPw6wqCLeTn7L0MBytUr87JVtlWvHFGoUq7yOdQLbSZ7YV2ec9axHDmmgSR0uVQ+Ah+98i3mgDQ9Y/xy32ETGbupWz7J5VZOEwbj/NNMXy8AxMtQqIjUVI9JSyK8E+OK4ddUOCTk/KP+7q3V32ckW6x6C0vKnBFDBwQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agwBotVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agwBotVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DE0C2BCFB
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789210833;
	bh=idQ0rBA10C4bfLCjEHfjAzz4OtCCD0q4YKv7CKNTSxA=;
	h=To:Subject:From:Date:From;
	b=agwBotVDw+p1ASgBK8BvP6EqhCb4XQaFNi9TutFBYxZZQGjXeGAcicdh7reaHHPMf
	 Ck9BL0IHFs9Y0+1aaYyGFT7UNFerTHEI78NlykCay1X3nOi9wx+AIdOIjATcbss2Ea
	 mMDI0OesVPEWyAF4mP2fsKkKcjlBQqexyBS+zyoFx2GzlNPakT3sUDVJBonzcNKPRL
	 hPjuBd6xyPeky1n4XwGrezoy6VwrQEv/NJh2eXC6dkaSxvOgJMVss7Opd6DaV6R36T
	 rpYQF63dAN1iidh8gBtVlvCBdLVALQxS6BoMOyJvl9sz/Yw6zLoflyDFl+FN4xi0Sa
	 HbfOqdGNIeU7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEF9C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178921083368.12795.4755172280590238002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea807638ccf9dfce8561307f779476eb5d4cf81ea7836c40587a518cf962572
Date: Sat, 12 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789210833
