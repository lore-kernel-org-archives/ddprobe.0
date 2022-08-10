Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5484F17D3
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660128052;
	h=To:Subject:From:Message-Id:Date;
	bh=Z9H8f4xQBEt+9jhhvIAH7l50AJBp9+gMlJvTy8O1y10=;
	b=GIGfS+S5f/iD8AiTLqb0PAzSHL8hSr5qe7lRzcPoHVHqNeS/oxT4bJ3pLnMczl4O
	quICFhrLXphln9RGrofac8yCE9ypKvGVYo1lksxhoF1t//+mtzLWlmIa1mkwSDxEOSt
	qibhs48GL9p9KVMNJOvnffm+e/LSuOvasJ3kprJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660128052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z9H8f4xQBEt+9jhhvIAH7l50AJBp9+gMlJvTy8O1y10=;
	b=HTbKD/zhWui1n9H7+CJcsBa8NKcmvE6qzshLQWjL1ukf4I+/WKfFMrCAqa+/WEUf
	HyTiadBPue3fKXat5i22dOHTf8ZjQV8el37IrCPHOu3shUM4uQuNKnIpNC1sLcugIox
	7LHAhYC1Qywayl1Wacr1TMr4SJThj9rxM/mO7KFw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828757c53f-9f145fa4-aa5b-4b50-bda1-9cf6abae9ca0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8d99b520ed56cb3a93b655738d5c6a9c20158c42f61ef4486a13c30d9ad1532
Date: Wed, 10 Aug 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660128052
