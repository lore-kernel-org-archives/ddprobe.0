Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435A2747F
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 14:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE62AC433EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 14:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678286466;
	bh=E8VdXDX+KhZuy6zFFuE3a4iv513KKrycyDFT5b5AUe8=;
	h=To:Subject:From:Date:From;
	b=u41MPPNfLEvSgJ5QGxUkNd6llKZmznKQZiO/WG/g6jZPWqdap3un9FYwqjFjE9wle
	 IjWP8UE9yCdTloObycAL0oKo/p+Pydtf3Wf+53MkBV51zmGB5S2ak4wS7LOybwfqnR
	 udI1QTvOow5csGVLe/4H4HKYABGJmODMW4Ee64CAq8Bn6mLptRe0kF/dzjniIbDdy0
	 q8M8h/kK0NH/jLteWBVjLQtf2WyS9kKI4swz4BNO5jwOTWQVJiWBZlPxp50uCLdqrW
	 jnkD0J6vBVArBKD+CENim3w4qSYn8m3Dk4pmwXwuiinFo/J1GntaW4anTkWqyT6bXj
	 71fACklWHZZrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF9D0C678D5
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 14:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167828646583.15075.11734785142759759062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 159e683aaa3def860bb0af1cae71a9878eab871345924d5c3b5417434aa5f40e
Date: Wed, 08 Mar 2023 14:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678286465
