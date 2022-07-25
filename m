Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006BD7E
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 02:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658714812;
	h=To:Subject:From:Message-Id:Date;
	bh=xhDg5KaTZePQwwOpzpE7xVaDcurQM/ss8Zxjm1o1d9Q=;
	b=L2b6GB1zXhYH/OpgyDRop0cy5fX+N4xm4GlrcKgOuiEyv5HwtazhLAarpYKCDzFa
	cBm0+AFlCkhPXurUxqIYQKzszyn29Y4vAsU0w5rZ0QykXXSqjL8Ju/VM5thM0XRidq8
	V2Ybx4w8rYs0gqyh25FEcCjys8FgFZNF3Up0XHcM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658714812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xhDg5KaTZePQwwOpzpE7xVaDcurQM/ss8Zxjm1o1d9Q=;
	b=NZZ939vzPO1Zvh65rMs/yJLuEaa74BE3dBvDx56pKbtyp8Kd0ivj1QxkXh3NPWR7
	l1NgCnCHExjt3ptpl2wB/7dszgLrUZgYKhtpUdu41u5xcMJw3wB+7tUZ+QoXKpB8Et6
	FZXEkwgbLdwoNJzODCCOiiObFgH5FuOjP5RVeGDk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182331b6f8e-abd6e0cb-96eb-444e-ab79-f6270bbd77fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65fe1cdd6222a6be5f69fb55b81dbd2b45354f884d8cb720f88acea2d8e001f0
Date: Mon, 25 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658714812
