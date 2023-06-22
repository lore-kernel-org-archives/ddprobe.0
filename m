Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402BE1C05
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 06:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF1EC433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 06:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687416188;
	bh=zqtxmmSl+hSeoGAfZ01GZiXG7J+edr9yj+7ejqcDkgo=;
	h=To:Subject:From:Date:From;
	b=AQyf8ADDQqxGRsnbuRlzUa4COxI6WxYoyY8WAh+GPE2MqEXDsC+kTngvisATHmsGo
	 +Puw9Hw90WE6/dFOj3OTa+tBEN9F/mzGVwa+kYVdkgeqt7xI9KoYsA2pW99YsweyiJ
	 TrtePFRc3TsIUb1tc8jISK8SobiKGcb0cn5GPWIxY5Wr5imZ7JVexckKhS6/Z+D4xe
	 oTwZCwZyYdKrS9O3B1L3fjh3TJGX5yV7E+G7GIyC/RXq5HV5NF7TRwApp5hjL+kJYm
	 7EE8xLYlSYMz2jErdlMb8QazgA9Z8ZmZage3e/5t6puqSwhGZb6GpVXszXqp3yzul8
	 9zYDRcOjo/kVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3226EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 06:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168741618866.8678.12543753308402565043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03d3afa02df25f3dd689bb45e618731fa3923ee963ac859100baa89fa77baf4a
Date: Thu, 22 Jun 2023 06:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687416188
