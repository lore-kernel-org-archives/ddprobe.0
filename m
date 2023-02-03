Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9D210FF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 06:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDA2C433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 06:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675404965;
	bh=HOeRL/neRHq+wW4yKD+nPsuShIERusHBY8H0+oXe+0I=;
	h=To:Subject:From:Date:From;
	b=P+0X+xDme87oJ7SMCkfMhkVckIAslzueaNT3mMt12yT516MSEr+fpZTk2v6PUZr+l
	 pl6oaXU+LrkUSyokjKKIIGPoR9c+fI/x6mKOcK2gJuEkpSJD/o1Vy2SXqxIBXpTTYO
	 aZdCjr0438AqFgBL1lMjPt9s4CpaLBqnzetqn/jFqdDZ/e8UOAPeRdcbWSTou6BcEw
	 WrlcOQNJUqI2XPUpmcxKBwoGgvElG9Qkhg4VubI+2yhNHV47LN4ZZUuA2sjnJ+jaNL
	 SGP2vF2lvtXr9a3ogusLz69STW4VWLGKXovCfjOAc3hE8AP2ab1P6JmmlWgeml47wd
	 oS4wz43M5Vzlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4468C61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 06:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167540496573.29710.10434909057192015566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde99b954adef26baf6ad522e3f8cf3a9d70f0419ffb183a75e0dbefdd59c58a
Date: Fri, 03 Feb 2023 06:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675404965
