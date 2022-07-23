Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1C77E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 22:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658615812;
	h=To:Subject:From:Message-Id:Date;
	bh=++GI8D3xTyjmYZ23K9yOqtIZKzj6BQg1I1wmhR0COdU=;
	b=OpYONf8SCi6Uflj6EaxdWShGBzkLDRxgHFit+wHjQSC0GXUwiKHLzJvJ6EtFMWKM
	JBMgmrLGGsP8XyCKLHubGhcDCz48XTd81rDngAM7iiPaOdjNBlhjg0zYIcMYnWcrOhx
	IiXI7A2Z3QkTYFtQUFSp8GyObqyBn4D0j2OwuoMI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658615812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=++GI8D3xTyjmYZ23K9yOqtIZKzj6BQg1I1wmhR0COdU=;
	b=AkAxx9OubusphvJZMEzQVGuR8RG2rRCRGG2YoVSyiTCu6JhPcX9B9FfTIWKp6sCP
	X4POE1ESzlN6HOqwFAAJMLvEUaAGHU+LsIHRzILE7t9rPwB3Iu4QQMozL0r9wIkmdz4
	HZ6fjBJ9oL+VnIo/TsdMAiWwrbyL+Yanqxin5KMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822d34d125-24926827-6c82-410a-854b-966e6d1c319b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8bbcec01d0a605968cff4759c3a4300462b4af169ecc0bd2d66162be709252ed
Date: Sat, 23 Jul 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658615812
