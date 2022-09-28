Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50767E4
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72030C433D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664397653;
	bh=qbkgjDnK9SyUb557E+navXi9JWKtXhSOghNLOxAUwZI=;
	h=To:Subject:From:Date:From;
	b=MRvGiaygCf60U3YuKQu/ZoMPGDIHtpNSwZiJB58zE1Pkgg9ceEs4iUr25ug5zyzto
	 tJ0ytlmW7qCbbkEz6fBDNFHFZEZ/4C1rS6EF+3EFZbrAXeTqSyPlUOv1tYXJ3nJqc1
	 fuSmnifoRSaM7u9kVXY0UH6XvZXy3YkxX/lmdlJRAGudYuCGk2uY+UjQ5OO92hON2U
	 ZKXU3+sFQcgVVXOjGTVZ02efnM+i6PJQWlTbgq8VxfovSp+ae/n9/G606HGcnBrdZ3
	 bY4WW9082UUk4wVrgNzCvKRWGjS2UkA2G5/Rjoil0s+HPvhpTviXdvm8oa0+bWEdv2
	 7Z5t0RJgPapBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 526B9C32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166439765332.4094.7286441819223464005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfba317d1d8bd9604e54f29bd7d1141614bcb1dc448f304b57622cd543cfb4d1
Date: Wed, 28 Sep 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664397653
