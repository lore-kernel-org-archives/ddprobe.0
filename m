Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF36F17FF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CEEEC433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671778287;
	bh=DDd/S3fMoP2XZb187y22rJg4FTdiZIuGrzf6azHPjzc=;
	h=To:Subject:From:Date:From;
	b=Oq8N7y5buJLDBCz6KPKrDNU/0Lrdj+UnsDMsBJ2wQBfprY7SrXibzYRA032W5fkFC
	 hRF8KAsO1KOwTxnMEDkRI3ghY5G383anDNWFVvPcoOrilZJAp9GGVmHm1VDvsj/1fZ
	 m2K90WK4C5Ynw8p7LWxIGoIKcY+Whh5qPWQvxZepePvWAWxZTqkd1K6bA+6rw37h0b
	 UZpRFQ8s5Uu67rNFpOeNh4CR3q3H4yXh6UZkbmXF4d1xAerQamNtjEKTjwLt2u7M3d
	 qZw23G2xj/wKgwI1m89inElokNuUzeeLGi2ZuDL7aGe3Jaby52egGkDtqh+ok5sRv8
	 Ru0GMTBSpIkAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EEA5C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167177828743.21837.13515915441309769152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5da78940889f1250176e93b733d6aece7632e594ee68519edfbd112bbf055759
Date: Fri, 23 Dec 2022 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671778287
