Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B079DDB0
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 20:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1ADBBC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 20:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686514386;
	bh=EHvebmNqv5bzrtSPXJVjcupQsuBqHkiJ2ob0HWQzbpo=;
	h=To:Subject:From:Date:From;
	b=btn+p1KRoMUTwxqBAiQz8W5is8zqJTaRoZEZXhQJvC3th3WzmRIoPJFAd/yEUlBOR
	 RGV6WmLMGZaIZmUGWvcfXXnKaWJKGEpTmEPyHyN2lTcVgGIrjPOtGraLkfflgTGSJU
	 jAZ0V7TdBNkL4dIPWABZ8Oy+Ld6ks7U00x31dLzuKnu3vyLadoidOiSjh2wDfp0+FX
	 xmYtliSTUBPJZ9aijFoAgEe2D+4m9YtWTjch0m0xXyc1Zpi37l61RMS9cMPx+Sl162
	 Xbd3D/to6FdYnX5mQ2Jra8qiff06J8VUSymG8CWMU0PsTLrvYbFGa0+wZrkwFeaY4s
	 +583X44XJ7wKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD742C7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 20:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168651438583.3665.12851548916280803074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd760812c97d9d4f752f1f13d2c59b3a8f345cd79550f92022be181d24ce46b
Date: Sun, 11 Jun 2023 20:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686514385
