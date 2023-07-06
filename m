Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E038C17
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 16:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDFC6C433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 16:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688659628;
	bh=+qJoKBpQz5Uv+y/9A5N/36w0UoPSHZT4K354mS6Ihzk=;
	h=To:Subject:From:Date:From;
	b=b5xY2azKy3QTkSWm6ANHRRuVWqR4cQrlrCJYqPsXJdEwEHsD2KKC+lkj6+SOGfh/z
	 P4bwNaWeWvP7qdEaGJ6sza0L1tOf50B9U/inNMc9WkOAkfYNCUXQ8QzmRM0eO4R3Eb
	 86u8bEMVM180HWo74gTqGu4izUaDDaV6fU6/kOJORPuMWTGzSQ5sCJ8dkEHhTCxlkY
	 hE8/w0RS0yLMolsC575dyz4h6gY96kPa0dMIqI91y/69VJkA6m+L/PSGWGG3Z1/20i
	 wEO0KGXEvXsn2p1nDdMpvmzNHvR4hMaJaDRSz/ICOeTDtj7/WBaiSW98Sg8dSpujqU
	 CYcGCBxhTO5Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C19E4EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 16:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168865962877.30655.16541652454712819454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 679d3e9d3fe8c458f899e8a199fa03c2d4e9c462fe80adfc8bb9be91c3e1a136
Date: Thu, 06 Jul 2023 16:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688659628
