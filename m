Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9492F46
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 23:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653868259;
	h=To:Subject:From:Message-Id:Date;
	bh=uEFOP62NXd2aayl3T8H9JrmC/sBt4eWnv7Ngd9MWbgo=;
	b=QA9ppHo7jUhlGJU0SG7CiKqo3IDC9dQxHGOnHkEvjlb5fGDOZeYTQoHwegww+E/P
	kD1f6GVVA9MhKb2soVEKJ7QPX/9TqLyXcZ4llO24Pmh30a+xXH8i102IzDjmz6spolS
	WCbNw5S4xo/uQjFVmx8kPBkTGCcsowhz19nvmx7A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653868259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uEFOP62NXd2aayl3T8H9JrmC/sBt4eWnv7Ngd9MWbgo=;
	b=DcALAfFGmgEsB5uuKMSO27AtSVkniB9+7d1A0RWudr10b1wU9atkyWpvQQ/Q0g7o
	Inb61s3PQALcNQETsKPQZ/Q65IQg33lMwtKcwAHIw5u5WtBe0E1KDovM2Mkoc0WtBnD
	0TdqewqA3BYV3jhok4YVVxFf/C+p3zcYVSMLjzQM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181123ae7fe-e7889934-22e5-4949-9492-08c55abfb1be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 042277cab4e5c0dce2e9b0344b966d91fdb532e38f946768f5b74cc54aefb480
Date: Sun, 29 May 2022 23:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653868259
