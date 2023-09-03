Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ACB928ED
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 16:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9422C433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 16:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693758248;
	bh=TCfp9RmOtYzTDW5SzhAIKUS3iGB4tsM+TQJNfN+RbA8=;
	h=To:Subject:From:Date:From;
	b=WehAzfpqg33YIGDhhxoXDyP76BWe/vvoq1grI2OOzJ2iXnxQ1CSbkbiR30qYUAqIq
	 G3CT+Tokuz0jL+kTUMsTpSqcXQVCgW0mFpe8GZy7O1FrYBxklz8Diorp/4jhVp3U3p
	 +JDkGuGyMlHDr/QPHTd4rfUqAULagOxP+Cjx8/3ULv0hhBfZIWEhzFKoGsBNtAzeCS
	 vU7Y0zeYlkGJEAG/xb9qvxqHKLyue/ifn+7vp7/p2AdPvVs8geem7TOJqgdEJAd1dR
	 7a3ywwgeb6EpFQS8XtYLG+vIJB998inAkI359oxe6o+1Newg9wq9N+fWzEgY4fZF4+
	 oe4oh7IbJE86A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5BA1C83F2C
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 16:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169375824871.16449.2361074132598620738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceb1e4b03eca0a21de89a3e90d9a7eec8aa7deae95a75f999400d004b5c03b55
Date: Sun, 03 Sep 2023 16:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693758248
