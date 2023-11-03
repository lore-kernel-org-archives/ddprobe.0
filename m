Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1331017C5
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dY/Q2fdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84439C433C8
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698988096;
	bh=Oj44MnPQ2eSDJrAqqYfTPkQmFi15UHmvL4J9x1mzjpc=;
	h=To:Subject:From:Date:From;
	b=dY/Q2fdhpsV/jA1wBUTM3jvyskJ2AQs/cEpitc9TvHO28msqNDZf38ltF2pGz/Nfx
	 5gstqFwoe1IRRghFVp2ZJCEBUUN9mYo14MeVW+iwmFDlnNCJ4SP1oR75mdV2kE261Z
	 8LaLqZgO7OOjs15WUL+G5MS7oxVt+0Fp9v3RKVY4xVnHpG1rgMyDNGoYC7Etqyz6Tp
	 HDqeBfDTqRpamMsFbLzkowRaDyOQ7lDLlv1HlmYJTddgH9rrkJbGQp5yK1eGe5cvDA
	 HWlqkhH49e1NHY3fM8bRseQlaissc9DGpUdcCvErI2A9LXQQKvL81wdWWhFAmOnwwy
	 nIzKZ85nM3Mbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68637C4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169898809639.20738.4625954799748969024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28aec77bbf15a2ad18e069a5b47c2fdc34ee61d235bcf4e11d24f975f7111d9e
Date: Fri, 03 Nov 2023 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698988096
