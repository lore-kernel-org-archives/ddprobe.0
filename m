Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02F6215A3
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 04:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650687958;
	h=To:Subject:From:Message-Id:Date;
	bh=iPayHi4BRnPEytcroJBvD4Z0LUnjpNUpiuPTGZW1ubE=;
	b=RFIX9m6eMTmlJImWMpJ6qumLThTBqhaOEkCz4gGebo/bP8Wj5kX89oRFmjsy18ro
	sr3LF5Ip3SsFOBETTMcnnBryTk2f/mJVCohBLnh04VXSIJb4svC65mwyJQTzPaGuGHb
	veg6OQcKCGj1JaZz1hLGorESSpshpVEkjUqwko6o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650687958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iPayHi4BRnPEytcroJBvD4Z0LUnjpNUpiuPTGZW1ubE=;
	b=RYHJzi97wzCBce3o2756HZRglOlEu+poVYyc+5TkAQ0fmUHHQm0nh8tME4TnqLJ7
	cl/RH5Pd6GcsT8MEc9B8N0vW9nnxvM13t3AVcyWnn88ORHQx/mJ6+BrZLAduF4VMBD5
	4LJvnzpWNhnTmkounzFyWEC6TmJOUtpMhMwSCzTo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018054ab5d2d-9ec33ea7-4f5e-4934-ab6a-0926347972b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4cdd1fa8d2c5e7f40ca459a863a17b8c1df038a06536835e9aa8794a898d3d17
Date: Sat, 23 Apr 2022 04:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650687958
