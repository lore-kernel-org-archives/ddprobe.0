Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396FA2575
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uj4lJ+wV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BB0DC433C8
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697978296;
	bh=Iz1eZBbefqO/78SIshgbjtU12kc+vgbZWSFQ6FX9AQI=;
	h=To:Subject:From:Date:From;
	b=uj4lJ+wVZ22dGy7ZpL5/tDtMeiH6pVIt+6HuBdKgv6/tMcUHGjm55O9biM/e21rP9
	 0remXDJXWhJATm2gUMML0l33sLW5l3gFdU3KRG/aIkulrLfgV4dubIeCkSx3VKamH0
	 lUuHvqpZ4zwgTUhom3Y2o933C07dPDxcobYBkvV7h27TadeyVxIpSaQ4R8KkzTu1dy
	 XSqKOLKRR979IlH6U/iCuJfOrFNvShazEB/OQKtJ4FM/bEDtRqjRME1DvBTaYdw9rs
	 yOCUKgfXkzDAIHgFfemANRh0J93zq/0aNj9yL5M9eRmzkSGbSGPlMHo1QYrRQ65LZz
	 wlltoub22WV0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69CA7C001DF
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169797829638.1928.15792483296118632508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b0f2dfe1df6ce1bbb917d943bb49e1eb7a5db41b0ba48b39a6ab94e4e30414
Date: Sun, 22 Oct 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697978296
