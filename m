Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDA90628
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 02:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653360419;
	h=To:Subject:From:Message-Id:Date;
	bh=gxHX9iGwZO5ESIeK2BkEzk1hRpwZK6Xns3KzyhyyDVQ=;
	b=MdNr/qkeA/jyIzCn4/h219wXHzutCIQNSzxTGfz4b9d+BRE3Y73AkArzAKYJoJmH
	0M81HdUwlb8pRwRZdKeXeHYusnTEQxeBJfsAfpo2mRbHgLoGBX8B8HXTGuzSJSd33cU
	PP7QjDhHlyn6utGcfae1SsQQ2pYmjYPU3u/AsdA0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653360419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gxHX9iGwZO5ESIeK2BkEzk1hRpwZK6Xns3KzyhyyDVQ=;
	b=F+axTsr5vmx3ZXqmIrfZ0C23dZv0km+wNKf5GzI9TvfpjlM1UbnmHDBLP/hCZ1Su
	G2coipCJ6dluHQlH3nPFeWjNDZXQl2KqXIqn5+Rqxv6YPNTeWOqbonIDOO8HMOKzhjr
	pZL0C9SZ6SLj3J9QBWvIqfXaeInwASzDU2YhxTz8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f3f5e1de-42571f31-4d87-424e-a2c9-bab37c73a54e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f4b1a05c813dfd4bda66aa02d8715b9b78de06400d5ab4301449186648ca374
Date: Tue, 24 May 2022 02:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653360419
