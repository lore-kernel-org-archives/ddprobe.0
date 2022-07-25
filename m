Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F034181
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 00:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658708213;
	h=To:Subject:From:Message-Id:Date;
	bh=Hj1RnIOJLCRMQmHpHlTjy2oIYZ6nPerQj3x/my0go3M=;
	b=DLUWa06nhdoCIXO3zTcuCJmeo6JHXjpB7x/sO+tegb14pdvC4UJ7tR81uBT4K6+D
	egjHsHG3U6gDneXSEfvV9kYVg6PmRWfgrOuSN0Sqs+bzxpD2zRJcjEW7NuF14h/kBn/
	5YLp5ujgcq24P0fTsKk9ORVuzuejV+6dQKxoijAc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658708213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hj1RnIOJLCRMQmHpHlTjy2oIYZ6nPerQj3x/my0go3M=;
	b=KrTvzTYBZspMfcsjsh1kW7K1kGUtuO5skR98/lnQ53zlkjuk0NXiltaX5rfFNGVV
	excwUQL5XBagZCsMEjvG9s9U8+rInPIZderpsW8HMUPhY/2fjzJEZYpatg9GGzCyTir
	IEVz5iZTqcNItT9GeRLafk2Jdjkmyerm4HtXKFGw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018232b6ba1a-588a6e03-5774-4e07-b342-57a5efefb139-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 032098deca1a2bcb1339d07d78fb9e85e1d3c381c82c5355eb9ef454a755b685
Date: Mon, 25 Jul 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658708212
