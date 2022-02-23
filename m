Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD72CC6A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645622785;
	h=To:Subject:From:Message-Id:Date;
	bh=/MAH6NfefI96SbsZnAyq1V9T19iLXl641+vMNvcrWNM=;
	b=F/G2iahddYfrWt0krM4PC4teS55Vwptj/utD62yFdtNQNOapIg08zUerujJfZHnB
	I5MJdiqKho9s1n50dHECKeJou/4ki1mW0v2YIMnB0qLEErwySgnp2W0HIl6Go6AjFyy
	D2RVB5f6X9zzBUTXc1DNn783MBHBl8j2+BkRVKpA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645622785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/MAH6NfefI96SbsZnAyq1V9T19iLXl641+vMNvcrWNM=;
	b=EOWL4qPeozw7Uo6NlTjOV+64Dolyl+I68U7SzpU8iefirxEefHNFTou/MYW/JNMJ
	QvMmoin+XGsoAsvih8mXm31KxBiJjN4Ww3P0y0Qg4ZgPjBSjzhThSYLvPnZ3igmoNcs
	ykcO6aYfURB0FHeXyB4obWZm1bQlELVOiJFa89cY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f26c2f374-b44a0e9d-8dac-4663-8d15-e88de987f792-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a132cfaf9ab167ab8826db50a9c091ace5fc2d6f7c57021c512c855a5292ced1
Date: Wed, 23 Feb 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645622784
