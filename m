Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A521B630
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 62E23C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668840654;
	bh=uFS45DiNWxGPb46sQeIwRmMUjwUVBy9P6D34KE2BADY=;
	h=To:Subject:From:Date:From;
	b=Bdo6KkrrUnyNPQb54NrdBtSqyyjirvi+xLLYMTYMoowJ+1MGobYcOmOluqXQtxc2d
	 dQCyCrw//K3Kq6/xk7rVGuFLgVN1V93MrWDVNV3XU/uSRZEPS7iJBnntDUxGeJO9Tl
	 wNXVYMcDZ4RPWqQwgjdhcRH5A32Rc6AmJeXbDNtZjSbHU1OECtQ3tAXE7ycb+u9dkk
	 lVygIJWvMouTTW8/hI0WiH/wiWb2+06vuuaiP3SJF3rggA/HT1hjFQrq6WrKZDC8HA
	 0lEl1t0ch4rQeDZaw2VCjPiVJiULZcIS6cCIWj6SQgBYsKfJFKGIlXBPYTTPEBBEk4
	 //3fd+5Zrv/3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FAA2C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166884065431.28052.2154055523311225210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bfc6db108ba339fa13795f6ce990bc50d0ecd246dc2fccd82546ec8e026d202
Date: Sat, 19 Nov 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668840654
