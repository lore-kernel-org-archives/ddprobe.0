Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D824E1FA7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F99C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664530253;
	bh=5a41mF1m2BuBwPMaBDwRyTZjUFtCGmmYA+T2GS6SiGg=;
	h=To:Subject:From:Date:From;
	b=HKzGBjImT+NZFLHEZ1lIFLnCm3WmT+QOFvN7PsYnCQsAY27i7WR61VYu0Hh98u/bw
	 zznzdxDa71NMq2C8nNLyt7YxD3uH2RrpREW7C3ZfxWN2P171J+P6Uon2H6vjIkGME/
	 FK/gc3lpgUKhBthS1r5fD4e3LJRVvYCmpblldUL5ky0atGDnJSM1b4cw48YWEbfBMA
	 QXCi/U46XZaCa7z33N/rNGIlEeJlUQnCAnhF+Qxol3zxztlAFBuwNI5u/5ZiMof0LB
	 fvUZMCFeDmZuAo8u8J0m0EY6B9ryOEkADVpGKr0RAMC7YjQAp6kJ6gDKoe/xt5vyeL
	 CaX/J4HhGJIlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 578F6C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166453025333.4482.2427986769468564500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a51d0f2de113b798c299c1891f1b2d54e32c278a1d83f0305b81844e4a9e9592
Date: Fri, 30 Sep 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664530253
