Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3B83D6E
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 22:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651705138;
	h=To:Subject:From:Message-Id:Date;
	bh=2fTCqx/6lmvh5wOYnahpc2NZbLFm63zOMWaTdjXHUY4=;
	b=buE8UXfva09/JZahe/jx8rPeCJ74I+Qq8ZWNgV5pD8Vs2OqgvbaiYIzEosKWgeFd
	gOqz83BRyuz9M/k8clNcwwFM9nzuB41jLjA1YKZFQclD27ZlQ7rMyQ4HC7d1w2ftPDx
	k233Auo5wxo8AEP+A6F+nQ+I8BtHT6WmuAMCzG9s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651705138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2fTCqx/6lmvh5wOYnahpc2NZbLFm63zOMWaTdjXHUY4=;
	b=D5gO8DpWm8VrJB26tipBDNXUY+x3K3ZrU8Je1XA7/3msmm98h+JlJuXCwB3Wx2yI
	lz0MQO0MXsRZXUFZ2m4JlxciRIODT94pvXBE0gr0jpQY7XhbenSfHT70lRTq7Ac1xu3
	aPttLWkPON+7HZYzZz6mj5y2OyuwA8rawAcB7nOA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180914c4c6e-441d410d-4fc0-44bb-9dbe-cc5d96a00c0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 509df1210036c9aeb18e993f9520db687a7a2ae43eec138c3db22877cb7bf4e7
Date: Wed, 4 May 2022 22:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651705138
