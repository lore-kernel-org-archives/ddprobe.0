Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5FC12F5E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6921DC433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669636854;
	bh=r8HelEq0KienMRLs6nys/W3+eVGgbvxPYr95R82RuMk=;
	h=To:Subject:From:Date:From;
	b=sdD5F2GIg7n3CSkdQAgWwabfRvHue4v4YUWGix8n+4+nR3QDc48dKenuyEssbYPIO
	 YX3A/mJgc3gHfoysMl9q0Hh0wUZQtf5kufsaV0VOdYVsivY1/CcSvXYeIACdqrYIt0
	 /Wv5owr5ZhRwq+QYW7eWlHCTlnAbDlUdKgts/HnCz2++nqQpsheTjPS5CbNZv+Ve61
	 Jg5LfSymsI867BXQ0/QQVXZDDfpIKR8lgtzazb2aqz4J+fMO0sh5HXnjnV0UsI3mXz
	 DeBcfOJNfWtZ1UCNYe1/uKmYJWuCTwU3fmb7dKsVBAXmTrW2NT0LuRYCFiCF5u3bvA
	 WbkHxsTyvWLwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5224DC433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166963685432.32415.7515775266977384400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca0be463cb026164525d387f90117f07876f8aee3ab619612c6e12e7e866f945
Date: Mon, 28 Nov 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669636854
