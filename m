Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492B01867
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660623052;
	h=To:Subject:From:Message-Id:Date;
	bh=ogo+FHaB6jp3VxUjdNR51JZ4AV9X9SJyL1agSfnqrJc=;
	b=G6lS08ciVx0ly9WTlXfW9xruMlYV3AP6oyxnir08g801VM8CsBAjw+UrKFZoNtyK
	drEB37RNusUIZ27SKBap0bWaPVKKLXHyoxlSITp5am+XLHu7nTZtMSlCw6JWpUQlCpL
	QKpA2PZwZS2bpPIhWZEOn1LbPPIFVaJzzHwsIc7s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660623052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ogo+FHaB6jp3VxUjdNR51JZ4AV9X9SJyL1agSfnqrJc=;
	b=Wi6vxEB/It7bdRpztJMxG8dvWas45r+vsnIoHRuH+KYW6gLmH+pdFkPTdoCwvzsg
	tifdvlO/Rq0NhgdbT5dm35CLW5iLET8vGvnIGCLJcU9wjAO7zlqVe9TPvKqTKbwrJYN
	6p58Wlwdg8HZUmmt/tP/UMGh6tErJRWVXLettwuE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a4d8df09-2464c045-8d57-41a3-b2ab-00da498f6feb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a810713b0881532b95de67f5d02e5496c7ff886ea3cacad55b62aad1c5e3420
Date: Tue, 16 Aug 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660623052
