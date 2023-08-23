Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F1417C6
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 04:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DB2C433C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 04:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692763448;
	bh=AH6D/sWVOHy9epnGYoQqDvJY3lA/Qf7a9JSPDUOWtWQ=;
	h=To:Subject:From:Date:From;
	b=m+77Up/3odIe+4neFkxxvbVDs/i/3rwM7t0oRUE1dlLSUnWQawyRvUkWHaHMlPy3M
	 lVkwBLegtKsKUa7Z6PGAEtsZ/W3y0T9TpqjJ0WEpyWZQTOqaOUN7nSSPOkEhT9wv2a
	 nq18h+c0AJzlHWh2uvgHrKmQClE19Q0qrvzcrvkdRTwl7AUIwLnq9sUI9ZMkZd82M3
	 sHPkE0dNrNCopOSZwg+seYfjR0lqffkD+Gmt5wb0VqOb3NKkS5fdUVIYwgI4L9AVp5
	 jVO9nHeM7yzjf6aThNI3S4EXACrLloiEPMqV5CrMqprzUddV+xFK4/0cAWd60ccjjH
	 CNY4ArTDqTOjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B6AEE49A3
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 04:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169276344871.24613.6857642491950299385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afef7ec00b260ae4cdc96937f5491b7442814ff93a5cb478ddfbe23c82a10be1
Date: Wed, 23 Aug 2023 04:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692763448
