Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABD7920E7
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660190453;
	h=To:Subject:From:Message-Id:Date;
	bh=dg9xh7OAtS9cQuJLv026vV9hf8G48J0OmSFUWRvcMt4=;
	b=lGM6+6iIw1fPBs5oNCekV/PnF87yUMQGSQBa/bccXEkQOGU0nb50n8TYGTR+h6jT
	+97F9umrw/pv2RJ2m8Hrul0RMaj0bQiEK189oWjjeW+YUK0XyMeHUhw6PQ62Zof9Mhr
	mdwIWMxwRaoQ8zXvF5kIRD/EqpBBaaU2idL/Mup8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660190453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dg9xh7OAtS9cQuJLv026vV9hf8G48J0OmSFUWRvcMt4=;
	b=RWcCDGoVUwekm/lD9BWXZBU2npeqCD6X6Bu/jz07bt2FQyF5zDkxJS8PRu75mh1Y
	q6sQRpn4jSGsCKuNd0ND3exgVAmVhvRqi95hCE4r+ERcWq0RCMoRoZb6ThNcaieXV9t
	P4A2xtpxzhF9HdaSOd8ewsNwJJ43nOfFS30GxB24=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828b0feb37-f3ea241d-7711-48a1-9733-3ff45d8bfb08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5c952d42776330fca76e07b698c9f5219175eb83cab79c422e966b37d34b658
Date: Thu, 11 Aug 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660190452
