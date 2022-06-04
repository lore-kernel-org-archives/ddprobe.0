Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4421857
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 18:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654365659;
	h=To:Subject:From:Message-Id:Date;
	bh=i7yYWjGijbobj19k542QqzQZZ2VrEk1uR0SpDfIRDBQ=;
	b=ZllhwOpxMj7DVg3z7mm1vilLy2i3qpKX5M2gEhxKMvq5y65RCGo4RjHWngxCXMqM
	KYRLDfXshxLZtvpEQRCqsz8Lm1vfJyQK0ZOisuVFBhLRKUYrSG9iNC32Ust1vAO+jBU
	4d4JP9Zw3p1l09XWPemA540+pb5agIRYvY2ynMio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654365659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i7yYWjGijbobj19k542QqzQZZ2VrEk1uR0SpDfIRDBQ=;
	b=MUMS2GaYSu46M6SKcGP7wFuWJLF/vyaFppjuxY6FfmMlgCYd2B/+6CJQnx84L4y2
	dIoK6JU39IMsqj4mQpPUqfMpX4J6J8psjoKpt3m0wfwPV4CdAPXrQY0rYfZqbwvDIYz
	3ULLvvhCrVXzDYOQYKN8ZoP1/bCB115OCkTOQiyw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812fe0a0a8-af6859fa-4372-44f9-a0c0-88cf2c57b01b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc85dd3476909b758b20f39236fe9496858191253a080af71a2ef08fab7829b8
Date: Sat, 4 Jun 2022 18:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654365659
