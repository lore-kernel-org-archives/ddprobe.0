Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90FA2F5A
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 707B6C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662242453;
	bh=leOfS08AFOeZiIfPaLNKo7egd7Gk6AsyC2Oe48nPDSg=;
	h=To:Subject:From:Date:From;
	b=gOqF1LHykbrxfQiesinhS7reDgGFE93+aYbQnkNxkQXyRo30NCuMQPKUhWzFJbult
	 6LS4BClmFL0rsUskkHEkGBBtso76SzhmdJBDh6IMbE5xTv4uylz9TSw3ARkfxOqwPs
	 1aslKxj4sTHhdte2HBjDQHkDgxncrmhG3oJ7f5vFcfIa0F4hGXbCDO4n1erorSoOe5
	 iMUESsJYOMP2/5UiCQ3/6F+DAzeuEHyGCjl+e9DBn63ZjeZ3DWamuaZK6T8Ig0svGK
	 jI/hFkLj+3nFXCEyvpi7+4CFy3RnGmirP4vcVlAf6hYrs6diAxIn0+HtfbcBPX/tRz
	 lM5XjOSeLJhHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5326EECAAD5
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166224245333.9967.15540995741304277267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e9880936309a6376be373091207d6b67676aacf78f14de02cdd2539e97ddb7
Date: Sat, 03 Sep 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662242453
