Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A3633CF
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 21:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FADC433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 21:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677359705;
	bh=dG0ylGyzl8XwZGQUM4knkhTeYXBNXLp79h4Ee56DJtI=;
	h=To:Subject:From:Date:From;
	b=n6dWq8T1tq0VqsuGYtoTp2coEG8rxLJPtKlGslnEUv+k36CoRp/5/2TIMjyiUEzbh
	 qfX90oY95heI3l8bZqdRCq1ph5z7BwMEvGE2NlUiIdxxbht2MRZg9IAPRG+2C0aR/R
	 wQhdAcBgGiFF+69ORRCmxeBSzW0uIW6VmP4p5gk+B4TaV87DGpPJWi3q+kkpSseK70
	 PWc6qsQZn0DXVsKZrG4puIDffoQmt0whIPkwm3W7cPLriLYrM+syoRoJEingJwMeGR
	 0gyKPyNkQE95cTwA7vKnNid6RYfTh70xGosQ0BcgUzKpH9EI1+Q82qVlRNSnLtOdZi
	 aGTdwLZ0JS82A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B29C64EC7
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 21:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167735970575.12897.15923754980484932751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c7f50b53691559edf7bb03261598ad47404feb689d4d22a33dcaaf285a6af9
Date: Sat, 25 Feb 2023 21:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677359705
