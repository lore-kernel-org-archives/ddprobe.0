Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0CE6160
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660090853;
	h=To:Subject:From:Message-Id:Date;
	bh=vuJVA/Z1DYdyjzHnK1iZjeoYtvrUCDxct1CzIuQRb1w=;
	b=YNukImCmhmR+NE0qmj0g5ozEYtFkFkWKN051byfkMkPDX81XVmenWnx6dlyWzxOK
	nQtHMDO4jm/1+oZtmDr8Wv6/K2G+vhZJJlVnEUPCGaHfjOLieS5LyPhCc1rsUZMngJw
	na4vkzM5Tx+z+Qvui3Vxktd3G9r1MNZK4gsUkYAI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660090853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vuJVA/Z1DYdyjzHnK1iZjeoYtvrUCDxct1CzIuQRb1w=;
	b=UHJDjCEo/0iSxijEyq/K0ZOrfBMSoidMsM/9ns9myWrOopTIw8L3jM8grt3gXYLo
	RPoL6XJveQq/rb8ZKTzHoOSBrRkKwEjLb2kLLR0DB6aorqwWLS3/9BK79h2+f5+7yJ8
	Fb5q4/3mKwjMpBDzjaeZg71cu3TGLrCsoef57Z/w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182852024d0-88000962-7691-4ad7-865d-abf54d30949e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19a2f79e5709078af36e2312ff3b93e7d135e84afc82c24edf2aadaf086c38eb
Date: Wed, 10 Aug 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660090852
