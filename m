Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381B07C
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 11:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653565319;
	h=To:Subject:From:Message-Id:Date;
	bh=EJq2S/lVJQG4JwZFZlREB3BvytSAKOGRvnLgsaWqESY=;
	b=FT9e0WUO3nxQ6qceOdikhG/8ZkOH572NG6whHxo2F9fNYLZ+3MAjV2o1cTbufzyy
	AEEbmCu2oJd7f0pKX8HCcBGjv4Z0FtoaQbsKcK5nDDIyRaUAUJ8lJEScqLYEY8Pgou5
	Wx2yXNrK+t0BdJni0baDoT4eocDGZ8N+XP3XhbCo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653565319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EJq2S/lVJQG4JwZFZlREB3BvytSAKOGRvnLgsaWqESY=;
	b=ioVWQkleBISEEIeb6B+8FVtOluaKEyYPZUGVeAciRpF79D+8sC8R5IJDd9Gp5MMk
	Jvmjd5R/gQ1cTB07mJvw93V3LglUh2PDvjnFw9UhYYxbANvJLgO4M5sRMYnt+wRTorT
	6dL/BQlFWYxyhAU6YgUUvKiisBPtVhLzwy5e65d4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181002c68f4-d7213c96-1631-4de1-a7a8-aa21f00085a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fba794416de3154fdf16f5c81beaf3255682e8624b06146816c2b0c382b48bb7
Date: Thu, 26 May 2022 11:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653565319
