Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6965839E
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 16:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A44C433C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 16:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692376448;
	bh=4lwjr6BRdgzQ59xGKv/yCD3KlTUg9Xn2oVUlx9milHc=;
	h=To:Subject:From:Date:From;
	b=ggHv5PfmvZlRr4pPNa4zhEnowwbOAkKezgpzY36T6ZzdeVI3Dehp4zZ2wq/y5kYP+
	 1x+6YCEjx/Yuiivyq/DwZwMfuKFtNJ3orK1tChWO6xHoYdiKxwubW8Y6AbHv8RnXUL
	 +Ih5CZbQvngaf9yZp1gowGxtew4Ku3m3aGEfVobuPdq05bbJDOA5p7TxJxfBwHfHuS
	 4jg9qSsgalYYMkWpugpoadYLAKBoYQEknQ+KLQb3fWw8dXQIEDQ5aFp4tCbd1lW1R4
	 vR0hrNhx2kFJ7ALGutPUEihA+xNYRb99XwinVKnU9LBGP4BIJFSRRitNUGY1UZQQk2
	 wTswB6GEB8M5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5122C71159
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 16:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169237644872.3893.6926952614305492373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ddfb7d11f8ebe4e3037450c209d75fb9dcf2867e7e37f9bc838f3d747327a7
Date: Fri, 18 Aug 2023 16:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692376448
