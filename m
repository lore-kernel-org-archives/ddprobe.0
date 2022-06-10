Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A542F4A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 21:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654895279;
	h=To:Subject:From:Message-Id:Date;
	bh=ak+vOYzdKvXIA5a5HSEUWnXU7YXTi9Zxf8Wt8Av+EoE=;
	b=CH2rbz7OVEtt0Mq1ceo2bsZqIPI/eA7WLNFePUVx31jygFKlLnfp2hnQDjUxvvpx
	qgUBHcHTW/Nfv7gdjy0U9fRdVzXeUbZR7TO57MCGWqHn8AwzYX5kS3nCDs12x2MSng2
	XvT7AoGfuJpruw+aDBP5LmUbm9C7q5jgfH09IHJw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654895279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ak+vOYzdKvXIA5a5HSEUWnXU7YXTi9Zxf8Wt8Av+EoE=;
	b=V4a434zU3qnU5IJQnXCUQEC473aDNKEYHXtpVql3Iq+GUIUJIHH2GYLU9aN5sQUD
	UsCiXO3ILsDBbAzen93sNdIgcNziWdlKLnraBSLgCeyUe1wMt4uQDYYfcwgOrUCINK3
	6bTIYfd8sxeHe9qWuMsIjGepADMtY75tjnMcXHDo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814f71fc8e-a4f73916-13a6-4f8c-8f5b-d66ab9eebbd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ee924b1d46b2f51207db1df00d5e12aacaa04a0228fbb050373aac61377c591
Date: Fri, 10 Jun 2022 21:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654895279
