Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D0A29AC
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660515652;
	h=To:Subject:From:Message-Id:Date;
	bh=VO+3GCVIDMXxnFM8H52uYQlLv049+1khF1B+31vZzdQ=;
	b=A2ggq5H7njToSvicSABQBNT7Wwvlr4m03TL7JkBEr4j5t3smB5QgnYvb9bw6dVPK
	xUSpywptEOrLkfLxroraShf5YiXrts0qncMP9LbctWsIajSiZh1pkTH+UGEjAboRZa4
	LIJuZfq64+S1BjqyMYNY9wThZN/kJubNpnd+s01w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660515652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VO+3GCVIDMXxnFM8H52uYQlLv049+1khF1B+31vZzdQ=;
	b=PBStefc4PccXOofaiWDpmayJtLv4KaTlqVoeFn1KCYvFA5cj3w4XZLbaeE/4VGZc
	ZC8MUIfg0uWDIeiIuN48mY+u2AAw+FGtqYvDp1fX95qimpn5zbNmViRZGeO9XHzmdW/
	DgHXHswWwDMQy24TXy7FUrz99s1NHlhxN/tG2C7s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829e7213bf-941e421b-8632-48f7-819b-65398ac29ca1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6c2f08d0da822d561de8051598ca67c743407fda5c523758889e6c22c8d06f8
Date: Sun, 14 Aug 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660515652
