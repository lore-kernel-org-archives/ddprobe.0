Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6601B26C
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMRyesHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B816C433C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702034896;
	bh=7sHvjY1YiKfVdBQ/iCh+zx1sbWTmBSSkEuZ9SEq++Uo=;
	h=To:Subject:From:Date:From;
	b=oMRyesHr/k7/HsCclBlDx527WeGYs4PXCsqG6rTsxMSczPn+WICi/Mdzg1S6Cikdr
	 PbZoGYRasj7Lembq9Ix8sbpaofYiOM8tMpqUN/Tg4Be4WNdmYLegiAaTaEyy2c1qew
	 pPk9EW7L/R5mBj9K/kwvMMReOESy1DdybzEbEUtp5oOJ4lS4TPFPJ1l46WAkbhCexK
	 iG3x+ypB94FDi2JCi41Ub0cgz7p5r1B38IcmRSiKKYhNIiHo0nJ1pjNvjQGOeRVcKb
	 uVo/xcQ94QHaUchO3pQvMF5ANi+/0oDk7ajpgADDTbhdPIY3Wu0uZCxuR8bu6lHXg4
	 P58zJG/tMkRrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61266C4167B
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170203489638.19403.11405539100192036255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0073d001823b26b6d0cd8867328de78c1edbbae065b899f6f39f4acd9b71d567
Date: Fri, 08 Dec 2023 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702034896
