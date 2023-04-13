Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3589E64E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 05:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC75C433A1
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 05:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681364825;
	bh=EtPEbDTeQbChPh9PF7HY4jJABNu31kmf5oCHPn12h3Q=;
	h=To:Subject:From:Date:From;
	b=m87LKIfD0uwjCFuA+CqJS5Z0A1CnuAMdR8s60L86HzlCOzIfsrPsU6LguZZAZIFDB
	 ZXggCZ0GkNoq0s6HbHgAKhqB25fknkjoTVJbJoLcE625wjL2BZYhPxZLLetrCifuPa
	 Il2D+7tCR9OGVL2cxDjUlEnl06h+LQS0jx81UuyRgXefsAiVNYC/NNKGspRhawrC80
	 bxVKmnxhGL7sunX5tMcG91DSGC5ET+Lpge64fHeo/+2Olj9iP334iqI6JwlduAnpck
	 yBFKhghKdwsGRceW4jhT1oZSz1iFpEte3tP0X1Cg0uHk1iiBWkWY2tk2Qu49UC7bkn
	 b61iPt2Rfb9mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C157DC77B6C
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 05:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168136482577.9291.2045609986347262503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c249e4f45744e0e18d0349a3872ccb9da4a64d643ea709b5cd58bd64440b4cb
Date: Thu, 13 Apr 2023 05:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681364825
