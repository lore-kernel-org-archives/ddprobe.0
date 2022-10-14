Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE58E361
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AF7FC433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665706853;
	bh=nqYYQ2UridtX/oWZiAORzeUzBULvCJYX370DeeHPyKk=;
	h=To:Subject:From:Date:From;
	b=SF+U6U8bQ2YLBFpSzV1CjF1hywVnEIgjDRpGt164otcjVVgS0jmR/7H4KHk6RboBz
	 1Hjv80aASM4rIgLcazdeb3Iw/Bi0qqu/cVcT/rADjWunAQWfhlAOwt65QcU8PVRTx+
	 jOKwY+6SvkFM3GDUR5bdgiRWwu5B3GZIIdqSmab2MWSUGgyUucSt+sdoVharxHExNn
	 +HbY2RdBCdJyAGnX2j64mtstrClavG0wL83RCCsn52sMypYB0YCJ++g09lLhFmM8eu
	 mt61+kZoyVuiOUyJIwcQJjkGQMwVBtTh6XfuNET+GQh9ehkUs+Y9/yOjU81Vzmk0N2
	 5sw3DTzUc6tCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FDAC4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166570685332.27668.17300848482337162112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1eea7235254643c2118730d8e53f7ddab249a63d8488d8a16d2f4ae4a1e627c
Date: Fri, 14 Oct 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665706853
