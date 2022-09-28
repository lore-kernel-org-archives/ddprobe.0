Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B363C4C62
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF0EC433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664391653;
	bh=5By8RRkd+sxXWurC+G1cD4NiZKGyfTeHQqV2zjuN93s=;
	h=To:Subject:From:Date:From;
	b=eHWa6XevqSBmQjH72WTsQHaoWbj1mjqCHtni4QD4jCHempnaSmF54hh4URIZQxKB8
	 nTwQgDUO0JCinrJqZRobWXUybEd4cSHv1swF4/yfXQf4d0X+QDySkWkhUr4LYw0jyZ
	 Gbp9ERclEIN21jwMmjkiQoCpbIQCW0Rq+mL7xSB0fh9di1+47IxljYqnsJUNsgpICz
	 RC5cFQJGXDutI6Ljb/di4k7craBUuZbh3r8yzuU57QbkHRbiMWNYaxxJMGN3Ubkbg3
	 tfUijtp9H78xBxv+lVj6hnLhe+Ff8arLFOf//gmnBHc3qm1HdKKhfX3W2xvCMb+kfX
	 gqF09kWU9w//Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E9C8C32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166439165331.5761.4876857016595591020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a154a7bec48f024a26a5d1d21411c64f4a03351d06ab6c544d1cf7abf03b41
Date: Wed, 28 Sep 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664391653
