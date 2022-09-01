Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF0E0A3B
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C68EC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662016853;
	bh=9tK6/GhDpLonBxTX9ywRTPB5amw/Fxk+7BHzEcuULNc=;
	h=To:Subject:From:Date:From;
	b=R+vPysK0K5cVU+jIURhCudn8qdHez71wgIKnNhvFNo2W6hVkNJH5O1T9/cDDAQxB1
	 yx4o/YJu9PMS8TwPbSinkLxyey4vIiyWaFgCeWCwFgvbQexerbi483f/qkutcbWRZU
	 guM3hbVdJA8hyK7DrXGwWHW0lLB9lgNtrA7l6ZKavRIR9t7id3uUDVYMVY2uXLXbYJ
	 2+fh8pSrevImPysmMyHNXK5Dvqm7eUCXWHxVMvKF4E72fi+lVpK9BljjRZ65xpFjln
	 kSsWDlJbuFCiKSyGlDARGBM0ukpAMUQDnONXapjw3igqm7sheh+fIqFr4xzmrqUmru
	 lZe9V7a1Fd7PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51958ECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166201685332.16266.8347849545506902086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc3fdd492ec0ccc9bd66d5f1dd22f80d4a5c7e684aa3650cf388dcb3f7c93c7
Date: Thu, 01 Sep 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662016853
