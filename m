Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3190A20
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 04:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655785499;
	h=To:Subject:From:Message-Id:Date;
	bh=iNW7qQ62CcEMOQ92cZmH4GSTnaO0aYCkPLkbzdbkWTQ=;
	b=b8R9JqWrcfMtCIBV3ph/vyLnBcLYWfqxIA+wor8EJbnwFachIiHkWryoP7/pbyp/
	qt1kZad6Juy5pzdI7FP65OSY/vH0zXJMqL5OU98QAXlgj1vGUm7fZPkMzgH+hUYvbQX
	FtYBf80Rh4VzSvHfCocw2w1XemiX3QlwYZUGMyQ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655785499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iNW7qQ62CcEMOQ92cZmH4GSTnaO0aYCkPLkbzdbkWTQ=;
	b=EzZsry+GbDjv0CehavG8prVQ983ANVQs8yNKN7BZK8RcMD2AYucoUJHdENSNqx1q
	C74B0VdOrzIKrEZyn88ZPzCoFcHJKwQnsrtHZVHSpWdZfTv1/xDZerVw6pMjyoOkQ63
	Cdr5QrWmRVfzRbvMaOmwR5YJV5X1k/8RGQiBcA+E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818481aa8a-6a97d93e-43a5-40c4-a847-c3cacd407f34-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e8e3ed36b2a0fd6053236ad14d1402e111cfb37068a4c8b7a0566b6ac5118ee
Date: Tue, 21 Jun 2022 04:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655785499
