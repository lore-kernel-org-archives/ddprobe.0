Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71B31363
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 907C4C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670739687;
	bh=jFjXtV+Jus1TZ9qzzQDjrWd3UyByfsBpvgXSiSwJxus=;
	h=To:Subject:From:Date:From;
	b=Up5L7o/1ajg/fUCfJmDWvnpEiMsrJ2RaPwA4HN3LjZcx1lkpQngfxCanhoFB7x3Py
	 azTc+DqPr674aeVALD+jSu7jzhv3VW3zswHRhE4D7kdvUKsSU9DeCBUrMwT6swpK6n
	 BZh1LGrH65ZbnrdiWjXdwjCLsKpz4Je8nlos3MAJa3jMr7N1YC4Yc4XOz/xUVotInp
	 yQ3Eam0pl6udi7EOItOOHv5gOzPAm645e0ioD5B62007Ukv+ZiagByzAvLUcmxKh1b
	 56KCPZveTjiOPm0FJf/0NRtlx2b3XaLboSqWMrKXtjlY6qb6yIJif6FP7dsjpvzUDi
	 s1kQ3UPg6WbeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 744E0C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167073968745.9048.2617736207458427950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88ad8d39fca1ca13ae2828ee62f0c50e584f652d81889d0ddafe49ddf40d277
Date: Sun, 11 Dec 2022 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670739687
