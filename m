Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7DB15AB
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 03:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651548058;
	h=To:Subject:From:Message-Id:Date;
	bh=Mht4XuQgDX6hojhbOXvGh5gA6jk9jSCwhJmP9daMzbw=;
	b=Nk0Z1DNVDRNNEVHIC9h+FlD9jW1Wp0eJB0Bq6kgcXzbOmuDU5l9RXLu2RtO5S/lD
	PZ8rgCf1QH+3ZesdOCfiBo5W+tc/5DV19N173xeE0SetRV8hoREv21drmcltrWzs1GK
	KuPVSNW44RTbxyb7mQCzE1DIoLScblyM6WQmDdyw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651548058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mht4XuQgDX6hojhbOXvGh5gA6jk9jSCwhJmP9daMzbw=;
	b=ansvT9iYmwnbUt9YiuS5dVSns5ZxSQfq78Me0Eyg5icREW6AEnxp+cJb/bsp1Z7F
	ltkIH42P3pqULRIC7ZlVDWhJE3QAGfMPvO/BLyN7gPl8rxy5XHa721PF1lBWSURfOnB
	FPZiXk0siL+eUsQLU+gcEmiXjEwP5FegelI/2r7Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018087ef7297-f69a0af3-db49-4940-8e4b-f69daa041345-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f272e5bd3bd196e0dd989bbb744756bd027a21ec53e3948f62566cf590780665
Date: Tue, 3 May 2022 03:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651548058
