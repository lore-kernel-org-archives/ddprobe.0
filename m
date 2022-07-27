Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8295AA3F
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658964652;
	h=To:Subject:From:Message-Id:Date;
	bh=Q6clGfLUJWPhEU5E9WJnmxY1ULRQ31mUUo+GW3Htpyc=;
	b=dAP4y/aEudc84prvrxMgltFQ783W+0fgxV8g0tmVgKSMA8FlVa66mZILPJ9RZ51T
	sp2SFeGeDrje62sDmfhp7bhCswoTKMSwjhsg/7GOCCd7yuFVG2bZih0jF/FnJ67h8na
	vhMBrIXLyD3YDqTG94wygXrmHgaifWjaxicdxMyc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658964652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q6clGfLUJWPhEU5E9WJnmxY1ULRQ31mUUo+GW3Htpyc=;
	b=XpNfw2TseS+KO5VL0pKzcoFz6bJpEr8+2NxRj/hoEL+fl0mnHl2VXfBVo+nu1rjv
	YXo0BaP0Kx0ANLR7kIQa4+A4ivOGerd5j9oooZZVzfjF+j2MOM48G3SZcyEAm8I+5xs
	QuNSAVhwyOJ/oDVld9Ne/DNkZHAXCqnzkbhBBCQM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018241ffb272-f2720582-09a4-4d9e-93e6-76a84714ab63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 097ba8cb25f5faa9d07f1867df07f21bd27c60426ee6f6409fc10ee095b560e3
Date: Wed, 27 Jul 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658964652
