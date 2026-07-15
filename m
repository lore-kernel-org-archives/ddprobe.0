Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532C14C8FE4
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 17:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784137714; cv=none; b=GqyNT3JQD8SkA8aCBk+gycmoWHixnFAQE9Ho0pZLUqOW0axyO6HeSLLQv8TQtJFcQG7GPnFTz8oRH+9wbhQERft09AYU/A1TZyfXT1muKTkz5dP5pCsJujtzQuS2lGBcjnwnnOrpBll0fY7oltA2AvAbDSFowXMVtqj0v41MZ4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784137714; c=relaxed/simple;
	bh=p8oz88iYTxTJgbTg6XZ1z2Z77vKDNsRwiGQ4Y+T5BCc=;
	h=To:Subject:From:Message-Id:Date; b=Dxj8LFK+h1iCqm/wvQgAX3sTCvTPL4D4dUTnRxEZEBs7iBmQDEVF0CPz+VxpA7xkOhUUyLkaxnh8xnbCGbKMlWIVE0XDeYHHfplRnjV15MXNzs2gB8uhF0dEbij67bHiyfXECU/Rajbkjhx5a9UpOjVzJU/m5Lkmj7efsxozfdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjSnvbUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjSnvbUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE1FC2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784137713;
	bh=p8oz88iYTxTJgbTg6XZ1z2Z77vKDNsRwiGQ4Y+T5BCc=;
	h=To:Subject:From:Date:From;
	b=IjSnvbUe5TJ8Ow1/Mg8GoyyeFpPxlWCWLGsrm/n4Wj+fMBxMbT3gyu5L3Nn+PnjS1
	 5aPT5BVMQQH7dLrEv54+rTzeptgh27bFALp/CegnpZBC31XKxJQhGiYgk6Pe+dJLoe
	 gSB9aoHlcxPAbm+1OniCWatN0+kwDEK+SbOwTFpewLszoxtC7xMsr+9GotJjNf/KmJ
	 LCcJHuJiVKH4/nC/fArprtUfc+ygT8DcJ6DojdPkmoIk6nHG/Fv2BRqIPOt1HFYHl0
	 ntrOUtqY5NwPVDSDURQEHUjOcyl9tqUpYAV9qVOsWkih2vb2Fl525N17T8rr5SDhSi
	 3XD647sbAYAyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B779AC44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178413771374.6094.457212099765627647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b7ee6372f981250992fdce788a54ae43e6a154a9b38069e0bb7eea29c141475
Date: Wed, 15 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784137713
