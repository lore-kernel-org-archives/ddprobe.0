Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D600018E
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 827A2C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671777687;
	bh=CQ5hfIlFTiGqRhS87cX90mOgRLvYWE2u4x++0PAr4zM=;
	h=To:Subject:From:Date:From;
	b=Vp3QpvNJ5iTvz/GmbObExITMLyUHOQOQWs1nhLr66kXQcgNpW1paDh5W2tGD+5bwk
	 w5izSXWZuDkxNyWgPrOU0H8jPwwEXmeM8/bqxuZ9eUn7kZo7aB+kmJt6q7J4BBlsjJ
	 +hc4UPqJzhob8HYwA/+lPWUCu/BO8+03VJCqATVK9oSYFlldLxdpEsmJGF9Rr6jh6Y
	 rVfutIsqMpYoWdtDANJalIazhsieWfulQwdnsFSYHXwbX6Xodq0GTfVPQEPcUlWZwW
	 hVzSDB8W7VSNghOxP4KnK2yDtFc960cJSu1eXQg3I31pS9iGIFKWr7yh3b70g90Gaj
	 Fmg8cBQUZmIfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64BB5C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167177768740.23329.6829538066358120569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea45893cd0a23682ad957c51ce6646c4ef6386d0706a5685191f91c0d29f7c28
Date: Fri, 23 Dec 2022 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671777687
