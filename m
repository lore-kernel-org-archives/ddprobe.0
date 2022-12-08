Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D8A258E
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B3AC433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670506254;
	bh=I2PpyW/YlANiR5EtWhO0zhECy686wA5Hwp2KrLa85aw=;
	h=To:Subject:From:Date:From;
	b=ugDk7glSgPMgxeaYYa15MO/vGjCSgXXp4dB7ar5FrnTg0nEuIk6gjNSdxLLu0lRQ+
	 KMkv18QqrL1SWiuj8DPwO5Pi2NRvKYDcnuoa476fk4jefXe0/N+q0GCT0VJv+6T/t9
	 jFC4zSy/vTBq1wYKQWDMh8gnjV6FBmZGaeDwk+qo6MDjeja+MVZejfFzWce5M7uMuF
	 hi6SoC1iY4TOlDnPHAJveGy73XRTVe5LHb33hmUIJkYIlWu++JRnL2TsQxAgDOlvcP
	 Y+ZM0hw3jD4OcUrJaQ76DIBFnW2nwUeZUGhvHiwgqgPk5gZ+cJSLxlle7U2yaGLOjg
	 17vhvA+cXGbRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BE26C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167050625436.30508.6104975870078076706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1357ec5c334f700339560f3066376d2deff694e3a87b53e3640508aaae99823
Date: Thu, 08 Dec 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670506254
