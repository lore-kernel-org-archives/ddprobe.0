Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C38D518
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 15:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 15370C433EF
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 15:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683127146;
	bh=jQw9/DQvAGr5x/zLNhYGqf4UeMSEkfpH5bKAH1sl1qg=;
	h=To:Subject:From:Date:From;
	b=rxWJKk8kdBYylpKpvkTOynMlQNGV5f+zOPb+nziOy84pxwQwPsjtDf8tgAl2sf0Vs
	 XtjQdApG7LdOqOJfnrRF7CyadA2NfhlbzXnltF0ugRrX+27vsTW6NwtD5tlhBO/bmE
	 PZxlW3R5J+LnaUA6qCZNp5LKV9ydw8jRv6lS0mnOCWg/OIPF9xMy/gWEcfU/dL1E9E
	 s3+C3iUUxAtw3KsnRwuFApBwf/gWdWPv0OF+0j2ob4+rGHkKfOhsXm2I6amZ7EGMY6
	 fvyUPDSV47aI+cflkB0MhHwLSwoUukUXKVvDfXLPbXk85sXcrp5fg4YQ2b8vnf57pJ
	 mF6MKOAalorNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9588C77B78
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 15:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168312714593.15769.77947093972058373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b81efd8584f102267149c8db1ef79299117d4c5848babddea68cd976a64d96a
Date: Wed, 03 May 2023 15:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683127145
