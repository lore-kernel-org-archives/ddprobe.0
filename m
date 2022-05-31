Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316BE7E
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 00:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653956339;
	h=To:Subject:From:Message-Id:Date;
	bh=CBIhEdv5pD6rNQR8hcCtz4es8Y6XGZhzxsj/EFteJ9k=;
	b=SpnW/vIsEC8a2vhhgw36aptmUkFWEmOQmDGk1rhxdvHJuf7ftbsHggpFd5rL5KTJ
	lq3Lp3Z0PJke/eeUyKZM2KnTUvlaRRkOIwBVZIwO3Mf/VhyXgMJMQYMzHm4oGI9MV0J
	Sg6v0TwMc6195hLxtWeDCb/a2Kr/rtO7DMYNqJqQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653956339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CBIhEdv5pD6rNQR8hcCtz4es8Y6XGZhzxsj/EFteJ9k=;
	b=Z6H/jp5layKxgw8RSPBaX/gWeYOX7UozuT1sHUg+XjssS6fGuv1FPjiwBXKHxLXG
	B/TaYHTJc4VxolCw+rqCZ6pu/HUZgND6wzcLOCpkmsrstD8MSZ9BIniOXYCxkD7/l4f
	jnGbL+t+qZbc2qwJ24eoac6g6Dr72hWQZM6wEut0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181177ae654-9eda176b-22d0-4260-a4b0-0c63651d0ff4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08f2e295e466c645a5f7ed80f252a980048a23c7ed71f1bf8309c23538112808
Date: Tue, 31 May 2022 00:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653956339
