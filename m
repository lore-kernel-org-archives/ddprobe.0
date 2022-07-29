Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554E27A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659075652;
	h=To:Subject:From:Message-Id:Date;
	bh=z7nFL1utcSyAAQq/eFA8TwwPWtHd7tzleU5C3l0QtYg=;
	b=QWO6UF5NiKBxLlU5crYFdzPKuf3ypjXcGT3PsTCtw0po3y57MTz+qaCMl6XskQb6
	FkCzkX9Wy2y0A1DR9CSwLfl5/bqR3Ro6+lalWJLnRpT8VXjPeIfou4JDcy+HvfwMh31
	oHwokQeZVNGG3riQ6tj7hEOSwBSQKVFC5aU0D9UY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659075652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z7nFL1utcSyAAQq/eFA8TwwPWtHd7tzleU5C3l0QtYg=;
	b=LkpWCdwUl/tx/0bnqmCWIzJEhriIRFmFWkA+MGlO6+AhwmFczPyymLbEc+9HfBHB
	ZyOvrZzEFMmHHZ3L79KmT5pVAw79Z6J+8ZZ1AU1QJ1n0DHtIN3kgqA1pxEbMimk+pNm
	HE31G2BC/AlrMLsUfV/T698ZGsfJ/p2We3B0lGdw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182489d6bcf-cb021a85-b24f-4adc-81a5-87150275ef0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a65da9bb396fa090f83784a5d67632fb54d6867950e0f4f81ffaeb532c132d5
Date: Fri, 29 Jul 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659075652
