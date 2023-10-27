Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1261D3DFEC
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8vl54ck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EC2EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698431896;
	bh=JYNJGPDy16iHUR0SCbxm4rUeysBgCuOGZXzL6uHreJ4=;
	h=To:Subject:From:Date:From;
	b=e8vl54ckVioich3kvzwuWbqE5MKdkgXwPZXsJnGe0j33tAQznZ8tH5+kvOoCCnDpr
	 XGbl110fD4QkH9/Lgh5ts+6UPUwAWv5FXX353Fzu0spoGIhX7J71nok4Canzr9worL
	 jK5KDvUrLXpwbnqN9IJSMOyKOkWG/+I8Vo6ddM/VHeEtxwmwx+irwk6FkQW/+NO5S1
	 RgVh/KBha0rqyYxoPJYhkwi0smyP3uTq8ZRYpM9baQukDFGzxOJEvIroXTlayMkROV
	 xKlTUJ7ZNvSWsHxXL4hbpvBqo8YKBazRPLlmxOXpfD4zE4bCB2O/TBUvJxi3WjSroW
	 A9U1naK6VJW1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70468C25B48
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169843189644.10749.8732290679144062446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 658f0799eab3b016359887d6aef27b0dac5debce0e70dad414836fb9e2419c03
Date: Fri, 27 Oct 2023 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698431896
