Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C258B7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C60AC433B5
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662915053;
	bh=IqvIQzmgMI0egpfnj5rryXu2xDM3YBI2KR5k5+VdvOM=;
	h=To:Subject:From:Date:From;
	b=m06eeYvUuBaYxGb7CAd74rLX4+SaLP/hIopHM6Rw8wEqibVkqpUY+FARclOVRzsNd
	 36eOc7rLcsk/0IKCew6PVAAtkp6UhuQ8mBrBA1Miz3X8hd+5qUN/jfC1h2DxwjnAWR
	 ggyY19g0xwwtJ4gUfhVsy9tXU2tbBImjsXRpl5cimVPPr+aJH1r+ZhPvRI212veVy+
	 jijGW/C/j+r4oG5pPbfOjKCzC92IrecUkRuevYnShIjk/yd+10VGW0wG4xiPblzsIL
	 f2Di5wzbIdvC30+THdzSATgbBBRhVfNMxPHc3mMAYychOF9Mcm67YvBzK38P44dHwG
	 ShhtiJBQyvbpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557D9ECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166291505332.4707.16198602820571959264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04796eb72e12c21fbd6c3fa7d9e3ec290b4231c60519bf632b814323b43b076d
Date: Sun, 11 Sep 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662915053
