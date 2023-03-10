Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61965A5E
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 05:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04C97C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 05:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678427706;
	bh=FiqfIqU2WFEfSnvy0aVEOeLiFqe7fc/LbZp7Yk5ctxA=;
	h=To:Subject:From:Date:From;
	b=UB9Ub8odU7cvCxOgWuQ9su6d3qp1mllv+/bbXMc1FJAnVxMxykSYBNNEkN6UFjswV
	 VSh97K1ZrfP3gChrwaLc2O/2S4/PCLYvbrdLaeGAvR7sy8MB2h6xSRVDLKk5LvZaBA
	 PYxrfSNs5SspDVPqIKb6slb1HoH/O/I0DyqfqrPlFlQd9a+2mWB8zFoR4TnUOKyHnI
	 hUcKQ6xH0HFjVAQvwrvlOsmMZen1IjarVjGpfglqaEbR+DqO7ifVtmcw0F0kqW8tX/
	 ZK8lS176AcUH37rHOuR8DEFj0AsrpFle7Bq8Qi6wYtRYgs1GUdlwnM/zHFma+RBmSz
	 TFH4cGmTS/Fxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA23BC64EC4
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 05:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167842770582.31443.3099004369630206740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef2b32cd2b9eb732b7cfe9cc20e522512a0d20e3b998d35d04ea0f332071a89
Date: Fri, 10 Mar 2023 05:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678427705
