Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE8A7C
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 02:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DEF1C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 02:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661824852;
	bh=AtG77Z7YqP5YwIjNE8aDzsGS0K3Z0ygjfPZxHaEZK6s=;
	h=To:Subject:From:Date:From;
	b=OqDcb2tI6wkbR7xQKRz10gbk5LPq3u4qzNIVbTRD2x4yfW6LnTLE8kmRXLeLsyR5c
	 2JlJ59gNw3HUAdrvSPpafWtDXduwIEibvU+1BjNhWhnrIOoaicT5NW5lnd4s2DO+06
	 +SsiPtHS6EYIPWkgLH/OHjFF6OmEeK3/iH7gb1sK6MwVJIGOX68lJ8HYbeZg4NXMqJ
	 d+OsiiWCOGo54NCjJ0yU4yt0BI1osSfbUp04upiHnG1pMQNdiBDzRTD1bDY4L43gDq
	 GIPK/cV3vlPutyioLvYnhOdgsTksjxkH3thi4bn/GIn000TenTrQlcYrJJEp/6TkD1
	 eC59Wb4k8vLSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52CD1ECAAD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 02:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166182485233.11611.18271074951604449885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d8cebdfa289663917a315489424698e8b49448670f75778b32124b034e3b58
Date: Tue, 30 Aug 2022 02:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661824852
