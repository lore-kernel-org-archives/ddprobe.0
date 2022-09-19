Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33AB746D
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75247C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663625453;
	bh=21x9WTGgn/U/fJJK+HgJ4pWX6FwnXmtJZtl7a3bjexw=;
	h=To:Subject:From:Date:From;
	b=OEy5iVr3p8HKmPC36mXKHQtvLcFqweRm6bkVlyZD355CW2RBvdKaOgEOa+YNUVzFZ
	 57SsIyfYma2SHAQwnFAy0qRNrjJOhk/EpsyVLKXG0KGoZXGHpnoCG7DQac3nHZqMEz
	 oKM5wdL9MeK9DT7LCVZ0tr+wQuw85jVfYtNY8lJ/Sj9hm5GbK0W0F3SsXDQMwFX/f8
	 HS+C3/YZNQKKS9Lq3k3SmvC+m2mLaF6+Vf9pV5MvNTwTsmuPUEnW2AFt+yWlY+YuiJ
	 6xXkJKwGNgA7g0z7IzdFbeRH6FCRcxpo8ELnO/GR4h49oyn8e4nWaqDoL4VZIb7Nm4
	 bs1YJdmGn4nOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5963FC6FA82
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166362545334.18360.12407780981956243105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0314eff500ed639b7f79c372431a244a1cf6561e3c5dae629413af4ce1839e45
Date: Mon, 19 Sep 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663625453
