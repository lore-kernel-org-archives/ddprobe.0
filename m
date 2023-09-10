Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D6E20F1
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 11:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7238C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 11:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694344448;
	bh=9DzJtv99X/n5jsuXMdgYn97ttIB24Q1Q/5U5hwXqGXI=;
	h=To:Subject:From:Date:From;
	b=CAeb4EOYttfz8B78bjaR3HMIeLle24PQjStP8hOoLcUHneJnrIhImamOOgIF8iYzk
	 Pg8hU4188iNgE6nifMeIDc7z0vUNKlIUEJ5+lLu4z+E3aqlQ3YMKZLK7TEQi0lQaI9
	 XKI52sU5y0zYncmwvKQEKRJ11dlDRsGVSFeS1l2dtvNF95rlkkW12OVTA7w4UXbhEo
	 vr8/phh85UVJCb3vx9pkKMmN7JVDcmMFyZKoYJ00u7F7cgLytmM/okAfLvd1nbygTO
	 5yfynwadUvLwtwuXIcSJdjRr20Yg+wByWmDwmdl6nDSJ/r9CYTJibeshz4ZFuEZCPP
	 XqkeunXUR5A0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB58CEE14D8
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 11:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169434444868.22153.14341420129382284025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef39cdb5f50026ee492fb3289759353e045fefa87a47d7aa150917bd2643c9d
Date: Sun, 10 Sep 2023 11:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694344448
