Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419A32F22
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 18:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF604C433D2
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 18:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680374106;
	bh=HevD4SCYT4rLAitoBwRZT1OZ9P1eOJUqAQ0jumbtLhA=;
	h=To:Subject:From:Date:From;
	b=pPHo8vI3B44YkPxpQtSFT1k1qu5b44/GvxHEnQWKqkC5XBepQwoAE3bhOIbbKUMg2
	 MbKBYXhlfK9XVp3ePjuTPQyoJBGPajBUTmelITrezqhn+Jd+J7YHJ6ChzV2WyPhKjP
	 UT64jr8cFcBuN/1G0UXmTpZhbi+oi9Sw8qG75/6hrq8+fhflZl/nJ2EieJzTy7SLqD
	 4lnNCm3z68a5im6u8TMXq1sRjTL+Mh+S6MFnxrYYoRN1xPqWGbEB94nexwVDjGTQyW
	 oSR1Q76ygVYb4cBKOvL/GbUi1GHdy0JZNSE0t7YYfukgXUtp96ty2oHZ1R74t7TiLe
	 gsDHUgeIgO+QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CB3C76196
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 18:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168037410575.31046.3139432878050265707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2989267dcd6cdf97ff8dce4e36f2585f32c20a93bd7bd924211c286edf49937c
Date: Sat, 01 Apr 2023 18:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680374105
