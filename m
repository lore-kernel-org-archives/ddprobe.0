Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434B4110B
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 01:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E66BEC433EF
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 01:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682471765;
	bh=JdhbNPYiIYIsplW1dPM3Tvnz+AN2L2qc0/+GbhWE/J4=;
	h=To:Subject:From:Date:From;
	b=QJ81eb0pEoCpJcbX4CLkIW8Ac3QeFfbHVG/4mNEPcMHf1nTXbmHY73kKVMRmlmLNZ
	 RQqZWEiDzETB7TZVp3/9Nk0BRepDqDJpxgNHsycI4kpWFi4O+8up6Kelr4GECyE1iQ
	 RUHRgsN673p+xwqgWEBQoupHdKpMlL7yCtb0sB6GbaqdVF+YyfAp4/80WuGoxJE6sG
	 cHIkUdlZATQjvYV9u8ZJSLKpmRApL83VLnm9lXGt3Uk4lQmPPwBmsIGF7rw7hxbOfr
	 gc0G+w9agN0zJ6WUt6HgbFTUirWetmgE+oBm97JujR+Yx/857IBNRCuAj9m1pkDeJR
	 9pn/Y9cz4evTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC4EC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 01:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168247176576.6829.360232524559208711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31b1b4ec7f3cce9e8e171b6d43de0f46a0f0e6893fcea7fdab6c44b68f57b41e
Date: Wed, 26 Apr 2023 01:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682471765
