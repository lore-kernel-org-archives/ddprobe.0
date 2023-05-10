Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2928A64F
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 16:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5ED4C433EF
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 16:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683735065;
	bh=Y3OPdx5DV0Lgu78fuFUO7esvAn8Em6v4iwOFm1ozcDM=;
	h=To:Subject:From:Date:From;
	b=aDDL4KxU4thefRZsC4jz1RcnkNfkA//DRDJfM3g1YFQq7ywWQmhCfCx39QGWMTGKE
	 xGqfV6ZNr+RGCMiOxSxj0CEYw+487KivbrYQbFue1JOLE2m8O6EEOxq3k9bM35vtTG
	 cslsd109AHAgyyO+ucBx0XiVSeMGPQAoF+A5Kyw6SYhNSB6ME0Ok2FTTz2Hz+LsEHK
	 bBbuOtgh8SjiRVMaZNSRaoNl7PJXc9n6WQkFvVxy6jP/MOajigRgizYz+hU7bqtus8
	 NFz4SVCKr9n6nJP86kODqJwjc/TrzHOnSj3SXoTf+FV0p4V6INQjQbGbtYVnwhxNLA
	 yVittsMsmEeBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8683C7EE22
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 16:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168373506574.23323.15568884665496793692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c257698d7ffc2448790a533336a3eda6db34f28cfce4903cfef67b98a5e341
Date: Wed, 10 May 2023 16:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683735065
