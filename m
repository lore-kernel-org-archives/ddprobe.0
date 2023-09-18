Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596C81878
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 06:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C653FC433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 06:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695019508;
	bh=F12MOpej/Ql6yw8I6FQY0w1M3eAwXnWCN4Dyknri6vE=;
	h=To:Subject:From:Date:From;
	b=l21gLxcow930oL2C5WKH26Zgi+6p+oKD7/VpKrI5ElPTrkpoIZ6tuWp4PcPJqcojI
	 ihn1hQJmI1NJ5Ka88aEFrHlOPJZLHliHluV0/AAcv0tK3zDhWMOWPQ9kKhSRwXcmvd
	 ZwTprKUi++5zikyanLmij2hLiLuwgNYMhgVf0k8GqtgaoqzeXX1oGfkfpTX+nc3fVu
	 eQfafzHgo1sj8vNlwlhUawknYRnljOWpU5KIt4S++k8eLM8Lzmtq4ORA2X8T2lNT4c
	 LcBUoSqnnwKUMQSnfEh42th/5wj9dyMibfUXWeDQqbgV6JCyBNGUC2Vgy2PEuFp19C
	 7zXRCdAiGC9hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6630C46CA1
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 06:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169501950867.19693.9121658170161223200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 352e571052f7c7d84ed3d92abf0b16e62feefa3d5f19d7ff0bb9e07bf6f70f61
Date: Mon, 18 Sep 2023 06:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695019508
