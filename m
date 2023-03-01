Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCC0A3F
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 03:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D916BC433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 03:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677641765;
	bh=RScVNNfugZIvxQSy/ooXH/NSxVgIH0zd+HfgTdzdTks=;
	h=To:Subject:From:Date:From;
	b=L3Rmscl8Hu241t3PHMd1AxwyNpAbf62B4Mxi2QBo3dZLVBmdk+wuFjp4gcPIMlg20
	 59xarPUTsKQ0Ewyq9Z3iN8Y4Z6IUbqvtL8YAYN38W9M4F0bNTuEE7Z2QJWtxLMNi2L
	 HclbJQCDMz3+LU4Btse9MToT4mQL/Yk+xRsc42wxQ2yR816QnkMh/tZyCZ9Wj0Ji65
	 ruWPVt8DfalshMy4i1b1jUywfd88wG1esgck93eILhTuDNcB4gO7TNAXrujErFNWHV
	 Yx7hUuqqXsHOVPT1TuJCMYC7TBbLe/lQGzxunzwPMXgqLHsb215WQtr+OeCFbK6iEi
	 Vx+GdpaTrv2BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE0EC7EE23
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 03:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167764176577.2941.1234516201899877714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ca67a0e78382be364b92cff3ea160db893b559710c724c8256f4111e2b7df1
Date: Wed, 01 Mar 2023 03:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677641765
