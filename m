Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7D07C
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646064084;
	h=To:Subject:From:Message-Id:Date;
	bh=4tM7kuRjEm+POsbpRGbtRPUpq82DsmnpZXpEB3BQ/fE=;
	b=bxNNN1fS2s4J15tnM21tlSqDRJnsr3TzvZTGGg++IREXoqHAJSaGG/x+4scUn4cp
	rmWFTU3EDRrrmFMuQgevtrywjmbr3Q7IMoJFw5TG9Jj6UUDpE4ao2NQQ8k4VQFsQY7u
	yZH9bS1b5nPDOKKPHzf+dBv5u+Zuxf2Podbnes80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646064084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4tM7kuRjEm+POsbpRGbtRPUpq82DsmnpZXpEB3BQ/fE=;
	b=V6tHPdjou1/GqLdN4BLFKJWJE7Ai7BaYXInxVTqDmu/9wn1TWRJhg66xaMXHLzgT
	uaExh1i+/W5oqZHT7ZziBspaSSH4wPs4KHexfq9v4quiVvJMzHak2Z9UvGh9UczcuCp
	tEM72yo2RZodDg1pzRLK+hALXr7/6QHm9fNfigRQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4110a702-a6cc93ed-99e8-4f1e-b115-4397e1cc327e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f74aaff02a2727b8eccac7deb82cd83574e01248c45c42aa117df5243cc6e8bc
Date: Mon, 28 Feb 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646064084
