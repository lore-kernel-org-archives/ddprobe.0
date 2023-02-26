Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4038E20EC
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 11:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA871C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 11:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677410165;
	bh=QEQfwFCdcTpCDl6uNX2CMGW4+UbMb8izULqZI2VgFJI=;
	h=To:Subject:From:Date:From;
	b=ClcIGRZae/3PxVOzNMDRcp/nG4FZD4iX6T3Nna8w5uBizH7MLqhdJtDvditIr6b0H
	 9tsoWthd9fgO+Iyk87I3DJt7fPsc2n4vaQ0kgkwDbtfdxbTexgF4KB14QqtRRFGRn0
	 0faosrQBVlw8N3gK9xPjvRz9VOQEysQ2MFchrF7otxd7mPqzBlioeOipLSfsWDi0FE
	 IZfGLlyJ29DiRNTrCsZejVGNOSlMnIOBmDf2G5Ni6uvL2ujoRbpIMnYMYlwHMR0WVC
	 tMJR0mZrve05ySTIN7cSlBwx6aq6vK+5oWK0Kximt7G3pBMeTHXhm0XopiyreZgnxu
	 kkQgPaWIIFm7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3EDC64ED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 11:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167741016575.16218.9944227223639460106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573e915aef87b217390359ed631d66d184efed93f20d2d615a9ab84951c1b46f
Date: Sun, 26 Feb 2023 11:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677410165
