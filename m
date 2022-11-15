Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B85291FC1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CD42C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668485454;
	bh=T9uj1NZl8Kuv8UvWOvfeaLONnKGB0aE2TssAGwJ3ic4=;
	h=To:Subject:From:Date:From;
	b=lPGSyOS2+vd/bVIENq3Yc7ZsvoDj/ZzGw7F5VVvA0KIKGkziFiH1rNx27SJQUppwQ
	 BFrBGX2gYBdqTKXrofz8YDZS+nYjaYr+A2c50H4iGxXhCvlMlfC6fmOyZxzheXOdN3
	 VovYLEDmvUO794EXqey4w1HOT9uYCcEEDZTX5RS9I4AbuCgrHCAlsw2lHdnbjqAhZO
	 NXHleucfeftV7+sEhhitAOQzy9Mh+If88PjwtI4OmFj84VV6d+TYO+qzefRlXMgrfY
	 habzREnjFAqAd0nDlzV4qdr/nKPOa5ut8pYYwjXwbCeelJH0artBUTpe0HEjZ7YGz7
	 F2BGV+koVBV3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52723C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166848545433.9778.12088289931096638186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5372ad331a8330cd978d68177c4b75c2c7e5d35bf44ef45aab12f6172853922f
Date: Tue, 15 Nov 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668485454
