Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61400883B
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 22:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0FFC433C8
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 22:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693433048;
	bh=YGo4t77EZFMFlvZPt4z+IHKcN2YbYW3I5htyCKptBws=;
	h=To:Subject:From:Date:From;
	b=BkI1O6hkZZOEjt5Ih1vClQhlOcU5UX8GEOG6OnL8hmzAKcnnBCpomyIi+AQjqoj+A
	 V8xvIiJocT4t9Vdm+3bi4Py1zTFAZJ8+Pu46Lpa0GBsO/uOSv+xftEGArE256gD7HL
	 b9Qr8/72HZ5PMleYT2lM16Pj4Df5tirdQ0CrquboZAx781uJ4Idgl0W8z5ti267TzV
	 7DTWDyn+7vX4xc3fqtEFb3wldwC0BHeLRdwoOWz4K3SI/vCzkUhz1Bps5/ELsa8+rS
	 EhMetae5YY4ruiaQCNxn+35wu6BiSTZWa43IpKDo2SfeXfOWX9Zq0AXujJ4fKc46nq
	 3PCYAcCl2UUWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B75F9C83F01
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 22:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169343304873.20282.3593928978772682899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6bc9ba4addf8e72c271573bbd0e1493195f0d907684e7f719f420092a3bfee3
Date: Wed, 30 Aug 2023 22:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693433048
