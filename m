Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29747470
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8746FC433F0
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671730887;
	bh=5smXwJQLfJuSeruKIEYtDuuUIMbT+y7/rRWihFLqP6Y=;
	h=To:Subject:From:Date:From;
	b=SdWVWZDFPyUTr/so0Bfu0GiDW3rueZU1v8qoU/gqNr6EZWvEjM1FYy9LfsR2mt7hk
	 /S+f3WrfUjouRl2jUzLDTsbukkzeJEwirJs87G4SsCxsoCSaGA0/LnOX6o8wByN4QH
	 E+NAzkfyseemC7SkwF/ip155H4pJdKkDpLcTmUBIbb3ehrARtA2kLgi7u6v1mRbK1j
	 F71d8trs/PuySfvCQacSeMoMZR3L7Ag68cpbsSCnDq/SSEs/bfVV6+nD6wMjGbgw8D
	 CFiIwLZbk9B8nuKB6/j8njBopRROuy3ahQJI8xytHVjxUu8BdwwI/NjT60Adpn2Icr
	 Wy2WwYL9LfiNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6940BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167173088742.5728.9892777059355502742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08aa3dcb708867daefd95640587eb96c00b6fc750fbce173c5a4da701944971
Date: Thu, 22 Dec 2022 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671730887
