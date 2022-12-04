Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C72077C
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E4E6C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670188854;
	bh=mSvXbE0zftJ/qW1pvvoYEkh/Oh7Sailxf8TMOnBkWCA=;
	h=To:Subject:From:Date:From;
	b=e8CDIfqbifIhW2JAt9PIkTMh2XFvsy0gV9zvbJpnMJvMCYbXpEGj5pnbj+kxVSkBV
	 IA/OugrnTimMk4I2ZVdIx2WB0USw3q7vGJIc+SH23k0ngZVwUUI1GH79+WZbqHaYuP
	 Y9yrz13L80gKGgipLu3zHrsNUfuKk73kjviNUKdwo5TL3LKQApN0oOS9GvTN4Gnpwz
	 altYpkH3WDUEld74YaLACUgGkiumJ2GnJQ8kP1t7eRuQn+HjgFd1CjhIPk597CrWQ8
	 OBaGaT1yVPgrVafNvztMG8f5Qoz8xCyfHImTFbc+xZTlU6sk0Oi0PiO3QuPLupooEn
	 h/VZ1P+KtSRDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53535C4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167018885433.26734.2482289555065107351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c28122e8c78e27e3bdaa781ad4c6037441003e8061d7e57e7202f2e0484985
Date: Sun, 04 Dec 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670188854
