Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E299620EA
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 14:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84C8DC433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671202287;
	bh=Uxi0syu0UY76A62LazKhdbYVR2BbLRFoUE3wpxKC4bE=;
	h=To:Subject:From:Date:From;
	b=IMbWydzz4iz3lj6rHAq6b5moOQys8NuBnrLjqfWdBsiX6F1TCBWnpZhL2NbA/pNOJ
	 Nq5MvHdBfwL+RI8nYfFbTFeTb7JbByGQnADDi95HrCrfNxgNPieN0oAniFJt7eDBM9
	 FPeikbmEYIVZGxHmeFo8lvV2JLGdbIUv3b5ORL3R9ToWIxb9emWCZKb3VHJhtbe6Ec
	 C+9+wBFok2UBno7OakJ5HaRDoOn3yIGIxx5EiHfcSOs6njC3+jTR4Iq3XyPMFWqth2
	 KXOakgBd/4aN24p2B2Nc8Nu0JSVzWvQcuSJ2mbkbzQ3bseU4grs+2e9p+pAasCIwfO
	 P/q2NLXwYAPnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69973C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 14:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167120228742.19315.11741356661784500258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13722487cfafa6e096929381da498e48508a47034586cd84000bf6a07304e808
Date: Fri, 16 Dec 2022 14:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671202287
