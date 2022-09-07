Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45087E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73883C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662540053;
	bh=Lkwy2N8ixb9VEbd5rQMx0nxm/Khc6uuimvaN+jK5XjE=;
	h=To:Subject:From:Date:From;
	b=AlBKT3vhuJpv+4hnGn6J6FucPjOLyYxig6N5FalDhFdaH9gzNSp/PT2AQnT9+SO7/
	 H0OuVFFjWeXGFA0fQ1sIwZLNbMY/Bmakm0oLuTwb9iB2CeQbO1+rl2euWOw1A0eU/s
	 J5BqCWScUA15f9/F1iQyJN2ESwwbX6Wvsqd3wvqE7BIFLee4Un+BZrrTQrjooScZID
	 5dRoie20pPh8A8FkARCJUSYHX2Qp2s/Hbuic/0w5Uby3kdoWelw6YKcTl4l1D7oG4T
	 klHzaZSnrpPm2cYGzsM5ZKupx957a/5zz2GJhbLYF7+f7SBV6o6fsn5Y3YA3ego8zm
	 wzixMD5H21vKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 526AFC38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166254005332.24102.18034639601797658079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dce88db114b02e4b6f186e0d608a9637c4d0e29d6e7bf8a4b17ee009620fb81
Date: Wed, 07 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662540053
