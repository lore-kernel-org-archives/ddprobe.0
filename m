Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D8910E6
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658974253;
	h=To:Subject:From:Message-Id:Date;
	bh=4Bm+UW+7z5o1Nf1vqzLYkakVaE4AokVlhIWIlO2hclo=;
	b=CZcGnMnOoyLQk7K1lrQiqcs+jYgkV3qGQg7apEbdLtkgXjHP+KgqEAPMbLDQTeh5
	XEvnQ3ZtVyN0h9H6uY6I3K6nfo3EZ6JX+mqX5M98fys88t9sej1vyQpMM7WNxv4ap7v
	916z9pZAHTUMu3NmCF3ueAh0nnChBt3ZwxIizOsc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658974253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Bm+UW+7z5o1Nf1vqzLYkakVaE4AokVlhIWIlO2hclo=;
	b=OhBxDrDhw7lDGITUwxZnpfKsBxnBRQ6cd3kI5mApVUbBH2S/ThlOX1dCBjC+S0xm
	PZyMgUoIAy6tsAv7YhRWFwGnYhWseTB2tX/ZyLBofCtQbz27VMbKzhzRnSNZrrCPhhQ
	bwYgGvyYcQAi5xNurfXT5tiUNOhsITTu7ZoSd2jc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018242922e23-cad9a973-96b6-429d-bfba-bd9470936c4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 639cccb64cc40b9479b3e890c9b9d59ba019a1e8219cc7d237ef927c369a6004
Date: Thu, 28 Jul 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658974252
