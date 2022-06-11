Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6D964F
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 03:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654918499;
	h=To:Subject:From:Message-Id:Date;
	bh=qEbemoJHnVZ+e68kJGk0kakrwjG3cu+YjAQV5fWlD14=;
	b=SQlq9L97laWT8Xcy3imlkewZlmKgXpJDhSRAYQLqVzcZgzJwKS3eIwanjSPVMEcZ
	gH5W/yebrUXusmqcpN6Dzs8QIYLumMjOM84NSpGtdB/ADPOk07caIRjKhZUMW2xmMrr
	5aNI4WXcBYYfjmIwleKzfwZiKD7Cb/R1284+MftU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654918499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qEbemoJHnVZ+e68kJGk0kakrwjG3cu+YjAQV5fWlD14=;
	b=OxQybrGNmDY5xAOyR0qSGja6oveR4qBQW9SPMzah/AqMjAptvpQ6bKmkU+6Bq0gD
	MYShK/havKoVRTDnL4O51cvnWaVXkPhGAJhj5NdiVr0eyD5uV4lLhV+mXl9QZdkmAa1
	4qWAPDwN54Bo8Iow3qTJhwcg+KwvKvEIvuMuSASo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018150d44bcb-0bb93e89-4d9f-44d1-80c0-9bbfe034d8cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ab4314ba829a9ffa5bd014b368e82a0cb5c079f4a0d4ccaf3bb5c8464730219
Date: Sat, 11 Jun 2022 03:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654918499
