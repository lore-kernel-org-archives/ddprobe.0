Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5532D626
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 16:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1395C4339C
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 16:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681405086;
	bh=5uMbvgtL/HmZB8tXZ0v7yMF7Lg1Nvob7T2Nn/yyDJNM=;
	h=To:Subject:From:Date:From;
	b=HWQjSsJ3Vggtm2KMyDFV/CNshnbwnJJ1KP7qbsYbkAl2rfo3DAZnohqaPTHqnfBpx
	 CyZCPHm29s06VCgf16xUjg0w2b+E7bBomZA/brif2tMDDr2e+apwwrHTmhZmuZTPGn
	 ba+9NvATQDiuYlmND3uEVJsWse8m1pbh39Roifa2OoJhpyJ2qBo55L+q2LeQELgIzd
	 /iXKTvv6wD1w2mKwYE1oN230rG6V9R1PNRqm1+ZCgHFWeHdc83t2MOBQeVLKObhxDA
	 cErQgt52jIvGrpInPpWUrpr8pt5as66FqdIRmozrDosUUSDzet7R5v0ljfFLctZQeH
	 9A5uRSTK4SGCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFD37C77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 16:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168140508584.3484.8910230688716723203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd5ffc46eb993c96d5c6266137d3688ebebdf5bdc8910195a5c0ae54358fc698
Date: Thu, 13 Apr 2023 16:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681405085
