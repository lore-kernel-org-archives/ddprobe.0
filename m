Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9D1E7B
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6726AC433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664725253;
	bh=VC/fFKM5MNqnfJV2w/ZfT6xxSQlU1LRvWu4BT2m9Kak=;
	h=To:Subject:From:Date:From;
	b=ecl44km3qXPYcMHXHRk8FPu5VbqRF00KkRT+K14zE7BPz6NnnKXt6yBD1tHX1BrRI
	 o/Y9yS255HxM4vKhQLZdQxE5rwZ3wk7eGD5eQ1I5K8VIx301YdMpgY3QU4qUMu2ttM
	 pxVGNkNDHXIiQPpEVQ0z5rjDfU3y6Qe+H2cT5CDxKeSUTHKHrilmr1eF0Xn6Jr2w4F
	 uiuXyrk8SNbxMm6zLRdUJomgx9nN4BTBSebZHnFqqC9lZek0T1yWoND8Gacb+lsIGZ
	 AtyGXG3roUldWZjfPjSjXzowrQKWUxk+UeG8DJFr5KPpko0lUcZlCyo/ZaMsQB8wn5
	 S4WM53zFPDLqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5159FC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166472525332.19246.18253250669573334271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b63f7499c54134688b069f8924503d56340de95e6bd974ec7ff75126f5285c15
Date: Sun, 02 Oct 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664725253
