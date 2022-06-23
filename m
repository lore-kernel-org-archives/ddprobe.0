Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BD01FB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 15:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655996812;
	h=To:Subject:From:Message-Id:Date;
	bh=e1EijGXZYS7IapHfEXlc6N67e0Ym4NJ3QusvXHMdQbk=;
	b=F4L+NAWlVARksMB7alGBPlmi1IIT1HTXrkJmWkdoUYIrzZsaPu6BMVS+8JuSWWD0
	wDe7D1BUg4/8p+UA5XqLL0RQxguPeW+q0TgOelj1W8/RDVhbXtvYAeKD4YlGfybpJrs
	x8bwiv5DA5FJRK8QTsPLmY4JXv+DaJI3f4wUQ8N4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655996812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e1EijGXZYS7IapHfEXlc6N67e0Ym4NJ3QusvXHMdQbk=;
	b=bic2IvtJEAocLbp35TUpRMF9HDwv7uxh6spSWhr8n4kxwHFW1YQoUs28pWfz6tRn
	deQTa1hbN4IZh/qdVeILsjnOwLigYoqyZBcPorFjnNLn5KZ3iQHQZ150Sjv44AMyujb
	7t4E88XONGxAPZtQ4YNBK5V7J4jhkZBL6bUi5JGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181911a0bf7-f77ffce7-250d-462d-8c71-14ce392ca333-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b92b0294eeec218a0144c4fc7a76d670e2b0fc1c4aaf25d6019535b5e42c566b
Date: Thu, 23 Jun 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655996812
