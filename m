Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CE86814
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 06:08:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0024EC433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 06:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686809289;
	bh=7tv/17Ih/GVJG6YtYXh6p+bxL/2dGxPEKOX8BUMaF+4=;
	h=To:Subject:From:Date:From;
	b=iQksdO/Uw9TNrGv4D2ZyBA+8/1mHh9pZy015oCZqzNFtUhvD6kPy8EUg5HfNKSRSS
	 TtJHMMukgzULPomrEYrWscWYN92jdHRxhK93htC7ATykL1W2WH4W/FUZbJvD2qRmRy
	 cWTdMntKagTfO/jBB0NCXwlHtOiFwNKC9PpMKMOGq8FhhXqQVRcbRqrsaHqFYulB0n
	 ESJ9htP+FQaCXljMSlMva4JllTEJJoxBtoeXrbI/Mzlx0v2IqkKwydozfS50qKGJvw
	 xgWqWC1JC/gIy3D1M8KiH9+PwI3ZncqoRtgnE6MUuXgE9LAH+GPoUdh2cmLtqtPWZv
	 Yp90puo46Zf6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C194EEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 06:08:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168680928876.12456.10365893655625531943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9739f721e8da8a7f850a4d143f5488cc124d6d032eff8d19e98a39e77e21ccdb
Date: Thu, 15 Jun 2023 06:08:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686809288
