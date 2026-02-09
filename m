Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA8D2110
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770598434; cv=none; b=NZAPmHjSCihqRlTXRx17TVy7c6kgDY2QzGt56brfSBYU3aif4t37seYbYzwLXXwW+qiH/9+zOd7QuE3eiu0/uVQVgHhnFf+/oV/pLpWT+yzDcN4U6Uwp8sXwjvFw658WLQd5hVrs4x1rch3G13fELWdF/fMlrzcH02WBAdHKxkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770598434; c=relaxed/simple;
	bh=XXwLZQbwVlkAEQortrho2vF3GFo1BJKBgPxy+hJZ5ls=;
	h=To:Subject:From:Message-Id:Date; b=l2aYXNIS+COnR7MrwiqYmG3UWflIe8gWjPWm0/cgv9qjIwCSSs4n58BB0tLo9Sq9VBT868mzalFL78CqnoGMW/IRcpqAAvWW3WJGRtFJ4q+QtCXIMSi0iQGmtjQPg7Lr+iDGDqEPuYVzhLmVxmG4oAKxLA41Y7E2+aNQtKXc2Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlcQWs7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlcQWs7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE11C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770598433;
	bh=XXwLZQbwVlkAEQortrho2vF3GFo1BJKBgPxy+hJZ5ls=;
	h=To:Subject:From:Date:From;
	b=WlcQWs7e0lxSdMPmNtuw7GvUz6p2LpWhVQN3IjlsGOY4H8RUwh5e6NXcEMwx90mTo
	 7z31JOucl77YyPdyGDVyhK6KHlrDkdYL0FK8HZBpgU9aqmOcnPIgUgRKziAPtaeYdQ
	 r3lAdpmxbOvQ1ZtxUczi6Xkc6g4Kcu40V8wLVKvaZIGmi/vJtNGj6+BolKtt2/BjZy
	 6HwL8HD+XCVIq/02J1KP44tv48cSvhvsrBHysdJZeCGmvZbXPDV+ml/wNMNnfcHw36
	 mi/DA/WIbwPL2Tr366rLcYs7T3aMZmxNoARHuJVrRwYM6UJoyMvispgqTcN2GRWFSg
	 7fbKuRbWhH/sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C64EEF06FB
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177059843359.19329.6387667905756587185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9524b766071a582bb51b1086d7e6468d813d01ea81aacb07c084692719aff78
Date: Mon, 09 Feb 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770598433
