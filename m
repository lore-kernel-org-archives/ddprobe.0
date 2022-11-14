Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B68A3256D
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FFAEC433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668418254;
	bh=+mw0BMLSXgxO+r04+71prBfmX6VEiqNuYtSVKufCNaU=;
	h=To:Subject:From:Date:From;
	b=PzvyTZ/mkCiMy14yamuhrGrd+ltVQZBIU4NHBG+ewtWErDO7qYEUIh2Kr1xP70xff
	 ogHlKfJiOBt+Pq9YqZ2uvX6NcR1YUDTYEFI0BebyV+k77kMrF4mH41BaPlQDdd4s0U
	 zAOMcb1EdwyxtztTzoR2EA4ns0/WTG3dj0JDvex3itsbJAY6jKWw4FDu1gngkEgekg
	 VTD86BEPW3bx4y55G69R80QgzYusfNdnRjWKNY4UuREiZHy9j37Oi1WfoA2+wJWOaN
	 EAE9hoeh+4p+8aPM3t6R90s+BWVwKCDpDpI7J5yze0lG274Cdyk6Ozp7jfHfazUps1
	 Z6Blp8gTy/B0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5550BC4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166841825434.4955.3257000575696401608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c70fd49095ff106f338a8871715618d3749e547b666863e99d8f7de30c500167
Date: Mon, 14 Nov 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668418254
