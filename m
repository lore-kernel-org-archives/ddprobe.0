Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C664EEA4
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79426C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668250254;
	bh=DzHfigGrGaXumrxioSRC9z7lXEu145V99/ukjNtOsws=;
	h=To:Subject:From:Date:From;
	b=cc9sDZvWo7dWHh/2VVH7+ds+Ie77mJGYPqmvUvg9hqpKIZLe/Zjk5LSO8pLiLgDqY
	 7QMGXxMaaMazkyZIO+yEO7z/qi8RLOyf60r31je/eRyJOM1aRMJNqR8omZBF8LyVJS
	 RJQijX84PokbMrqY2ilA2GZhTrH82NtpwIg/Np/PCsDsJKmjaGZRkkCFB6iiWxupJu
	 YP6oEEuZGce2HlQe5ERQxhcynokP4iwYK7/k0S2cpBddporOMvYkf9ut1SVdOQ1tlV
	 A5LP/Jct+qDsJofFqTF8qbzCbRZIHHwSlCkN32izXj3sbrQM/trQkiWCKeT9kPFspZ
	 yJASRa7HoJRMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56DA8C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166825025432.25062.11346288370824630200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 746ebd9483519c517863606ca8d117c20aae073dc1673450a012b4f68a068d41
Date: Sat, 12 Nov 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668250254
