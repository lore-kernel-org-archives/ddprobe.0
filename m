Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D361C4423
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E0FEC433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663184453;
	bh=/QqIhDwh7nMYgKQpeWNyrJWWhFyFKRi+/XKnOgFd/P0=;
	h=To:Subject:From:Date:From;
	b=RWJaHRQAPWnBTOB+TlWeKbUfD1UMe9WYFteAfC3bMDPmgGZoSw+KAFUWKG6vAtxn4
	 r/Aa3ifUaSCZOotgNmhm3SanL6cG4n0dsjx7m5Hs4mdyrLTbGixSlSE7aMUr/KMGS2
	 28U73QOjqblrG658ySsIOaCVAbpzwxKRJntcXv+G8Spj3bR5WsIEKtYM2FFa+EYcQV
	 eKQQDCQg34BCA/7I/CAu0M5cIloet+IUo3O4QcXU7po6NkVzP7tmuE25S95jxo+Gcn
	 LQcRwQPFZvtcyupFd1LAxtrB3fqtbOW0MnaaTQ60DEsqNbP7Pe6Y9jVgbFjcl1mOJb
	 nvPRzfO9Srbkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F769C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166318445331.17151.10606157176883354624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be34eb4b21b68b0f9e645048fcd7021275b81d63711ba0d5af5c6cd207c1ac7e
Date: Wed, 14 Sep 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663184453
