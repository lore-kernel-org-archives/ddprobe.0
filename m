Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6324537E
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 00:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA84C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 00:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695343508;
	bh=592YRngXBPs7BXu9/tNpqFf8hbKSxEJxBORct9SevsU=;
	h=To:Subject:From:Date:From;
	b=peU2dp3/+FHMD+LVow2qDrLmyuZAmuXQeGN7UY6fxiJXVb3oD6WtPdwqi/A09XjKZ
	 tzPp1jCUI/nIfzc2kHRnZh7L3jHBdshDfaSc7UoXPlHpuCgVdxyE2C60uYYIAx5itY
	 E9b206/qtZkxYl1afPYdeF9hn+08tIf1xMwOMrju1fYy61ugshB3rKqXcSwdCLPOSo
	 Gj7i6isvwQ6ehwC3B2NXmGTg+pu2INX3rlZOKF//fTeRgqUlUwAQR02sQRsPcvCYq1
	 airWiSJ+exZBov/hJjN/qAqMPfkGba2sCr8TSPYAy+yoiy1QX6uk33qX92MRBB+8FQ
	 ysYcyu2D81HLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8324E7D0B7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 00:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169534350866.27669.13407007979850881648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2b49e3843c8207a6eb22a82d1a125c3cab3c4de1a952a7c16aae2e226d026d
Date: Fri, 22 Sep 2023 00:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695343508
