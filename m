Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 843173D7B
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647587185;
	h=To:Subject:From:Message-Id:Date;
	bh=JVQQmfPjpgo/kXjSr3Ohz7wAS0zxVA4bMasNwQrEII4=;
	b=j8YOPfkdm3B2c7xSCzdsWdw7VH/Ekb6Aq5xHHP2nli15/CLpQA2QtOmw1GLQEiB1
	+8MZKZo6rCYQejoRv5ar+h2hWj06hY406qv91ABMs3+umIFa3AYZAea0kMAIwJLdrMN
	OTi8X+susyrvCb08Q6Apj2ord9b6eaQLatH6m1OY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647587185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JVQQmfPjpgo/kXjSr3Ohz7wAS0zxVA4bMasNwQrEII4=;
	b=YsA6N0Td1KBoRRXNrIyy9HSDgVc5SvtUrXXWaUOQ6hjZoJ94zs57SJdGDBc7De2v
	m2tAZeqZj0xzaPPWhC91hxsVSmA4mZHYoYPz7cNMERQAyaYUKzX6KjH6DJLuaGC+QHk
	bcMxGoIWx6lPmS4YA5D3hJ1HzIJiDeF0aQMLBZII=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9bd950c3-9c5e518f-e5b1-4799-af00-10ed26d2e895-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef59c300bef8650049c959e4956e9de866723ba133c5b993fcd1a15351b0326a
Date: Fri, 18 Mar 2022 07:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647587184
