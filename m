Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBA279CC
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 20:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E44E5C433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 20:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680727025;
	bh=6FCrGCg1xJ6bwPjYSjHzBJaKWnci7e0oFjLUeSX+7Vc=;
	h=To:Subject:From:Date:From;
	b=PzcHFRD/qk+rNrK/xuSrK39v0uqcFcruWgRxbTfsAe9CRHloi3rMTxh0a7q0oZaES
	 g8VKpyFCdqe7xCQZspm0la2nm+xOajW5iV1NNnDzYJdrwhD07r7Rye69QyOj9QJ33m
	 RaWEHSkW/BBAOjW6o6xo3VJN3xxgJIits8DI/hQZzaHaISu7CzuzYD/Ty/odG8CYLD
	 SIGcyx4/cSkhoril+KMynkHcbDQtHxi86hUTaud1F27F1y/pTBRL80o2Sm8lMoGZ6O
	 YVPWN8nIcID4+q7RFcZ19+m+QouObhDEOfUdDxqtvZP1MnVXgkH9s/maxQAgLABKkJ
	 yg463SOHXgm8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C409EC7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 20:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168072702579.6279.1709026020700059609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6edd8dbf5bfbb0bfaedb7034c183f0204851ea098f3613d78d2613d300add571
Date: Wed, 05 Apr 2023 20:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680727025
