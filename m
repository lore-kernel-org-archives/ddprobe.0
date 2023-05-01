Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5660264B
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 04:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E757EC433EF
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 04:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682916485;
	bh=gnv53DZzes9M51EJk0/+YLa7AOLqiHrFYgwmcNrZNew=;
	h=To:Subject:From:Date:From;
	b=b7aKqiNAxlOr/4eFwwBELYFp90g8fbO6CEMiBFs6ROkDi3urS+Sm431T4jBObxY7S
	 auoL24WQgplQ7L1/RRy2tTTM7RLA0dD2wT9CF6jW8YF//ywSJ57qa/3ftFyEz0AptE
	 PsyzScwlFuWXoZvoDkayoONzbXBeIX+dMUK9pq2xHyq3fC7bA5qkcqbI5q2lYyxExi
	 6sLuvmslnGWWI29v/3dyJvfBevK44KhK6u/rBQEaTNuOOgS4CtF0dUc55j6bpwRxEL
	 sPGGN/yGnaQ1UXjgvMDDavpyG877yTlOfl1wbXchFkpsknzFszMZlgo7R3gFduSOT/
	 Iz7Bzk7HQFjAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C744EC77B73
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 04:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168291648579.30412.16703472194493830105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7258bd295d4111b675e3a7ecd5ce6f1f31d6d7393706c556c1f695bda28e3de4
Date: Mon, 01 May 2023 04:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682916485
