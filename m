Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F4B1FA0
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 04:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D170CC433C8
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 04:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694405648;
	bh=Z2b/W/ArfKbYo33HeuNPGONRw3QsDcKlP1Htj9ZU8KY=;
	h=To:Subject:From:Date:From;
	b=g6q2VPM+QdNqLBaek6OCvoo/DtQzkSrmI0Zqwxgtgs5i7GAncWQIvhrR47DG3Q/Vx
	 WejACCmhTsobwyXxlXalQ4eA5uIucXcWz4rI6x3ott0TL4zNAudL4+n7rRKQJJpUZL
	 +3+EdTPiEn0rCBpcy98IGU5vZfWwfNSNh4Wd3n9J8K8FEW53jrklY4+2bcu2yOV3Vd
	 vbv5nJ/TwuvRLgEKLA5HJxio0r0bxXgeWitdWRCzvfOK0XgrcI+NHMdKItcsj5xAPW
	 RhYgmX4hkyDO1KTaG0TFa8R0pShPnf0XIc8hghAT1T7yc84JL3oLjc2JNzlT/NhqLZ
	 AA7BZj1ijtnaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3E0EE7FF4
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 04:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169440564869.20854.17733662962934466772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20329e58a6375dbe12801f03ccfea651dc2fae27d54848b78143e1b4c537b1f2
Date: Mon, 11 Sep 2023 04:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694405648
