Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25491876
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EAB7C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663740653;
	bh=U9Np7Ms1X+cxlSaEVueuUWviY+TvUX1pIwuut/J+aaA=;
	h=To:Subject:From:Date:From;
	b=MQRI9GD+GSqQR8VK/7IrvlDbI45Z+rRjQd6D9TlqXd411V04b8qMY8Grd23rqLFLb
	 LtuXtgyS0sJ6rz6rsydj6TJ2D9uO8wVDrvGKr7tK4/8hzWi38pUYJVHjqSV4YmTmmv
	 VeApOb76ShvA3HtCMld1TpUdC2BQjIUOV0U7VdKvr9HLZl/zAJ6M00k8ihhMRSvGJf
	 IL+e1ixpheYr/3Bio/pQsetPAnATajVUCH6EHYtOJO0lunZ9n78XuYjTLoMO1QieTr
	 w+aq3hXLziBSmOhw4mjPX4svbMcH7tv+U1WCmADa1RSHwlUwfnQqgJiPaWc1z+hGh2
	 YqpOafkVyrmHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54CA8C32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166374065333.31735.18428477541320467467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa527f634ea85fb75fce7a6021c48bca86ca1931c1fc05937d79a0db55aded7
Date: Wed, 21 Sep 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663740653
