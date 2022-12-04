Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8CD52F47
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CE0CC433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670197854;
	bh=9itXnoXHqRzIt4Z6bZOJtf4WM7gpxpFfRsjanEa5hHY=;
	h=To:Subject:From:Date:From;
	b=ApKhiqgbjwcGz5m1Tff2cWhnw447TKqooDLnbQc8IS6ZaD3veca1cA3F0yzdipLGd
	 E9VHUGJqPSVQo+QZETyADHou+korwNuZzIx5p5kMqKx6SC7I6WL1qf4EKUjTBgPAmx
	 m3Hj9NTon+5z0w+q1qB41BUYzNjWf0gvYNqZeXMykhH5LUUB6roBWbLjfoIGjZxp1r
	 yQDI4oHgiHuKzmSdDcTZYz/ge/uSQCyLJdJpR7L8bhSBki+J+N3b4Zmj7942gQCpxW
	 DjAYjbngwWi4HIYlx3VMy6RubhQ+Qb6sN/i79uOaksu1o+XknvF5y4KBWe1qKd+Q6x
	 qJAmw7420eLVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 552E9C4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167019785434.13267.10856597550081848625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83c5f4c63ff51e8f95a7d7521fabefd15c27e703d9f8f8bcd706c20cbf0ba1c
Date: Sun, 04 Dec 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670197854
