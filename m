Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E43C36099
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbKQz3f4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 747E2C433C8
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703169496;
	bh=usYudoFSsusWvnj5dwYlFqte4Z7B/RSuvQFW2EIplDQ=;
	h=To:Subject:From:Date:From;
	b=tbKQz3f4OIDl5is9oBVYE13I/L+KK/7MmqSdP0dZ2GQylhOPJtRPnusW5WA8NmfEd
	 EjYLRatXrMk3wL7DKWsYKoOgw7BFxTfkODyEDzWAHM+KEq2WbXHZwvhz+7KkKQPjp3
	 zHyIrfUepJ0B4qkWHlTNrkaW2j8rMLkPATxER44USr91gholqdgJctXZXs7cKD1ljx
	 wLpKOvNWrF585QL96raAAM6CoU0ZGj+bkLuRBwTdsSyxWu159l0Dx4lOpSgj5bwSbT
	 4gzJS8S+INYdOacEDnl4SctNzxu6rcbBCVlPSMyiIZ/QSaJmDhZsHPt0JXWaRszhm+
	 MSRy/uiAcXVwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D794C35274
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170316949637.25205.11057973591766486804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 556eaefa26bf5837056d01d8e8050ec35d52f37897be1acfab2f32be8e1e67c9
Date: Thu, 21 Dec 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703169496
