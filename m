Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064167F
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 00:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652835419;
	h=To:Subject:From:Message-Id:Date;
	bh=t6chLbinOEX0QhHvrlRnIShtZhVrZW3JFj8BVwMPcZk=;
	b=PJfmz43Vfq0Ituy4JdlGM3QZX7dx4FlSzAunBK9D+uuMx1OFkwDqouYB3vicW1YH
	Q8YYh1rc2K+4LnuH/YnuWdxp3CrhTJ+Q4rIjtPqdMZ/Kr1TTTFY3cKwXflLmRY7JEDS
	GddzKwC/0zVM/SfQKWcv6/G9YnPTfbcdO4cnHx2k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652835419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t6chLbinOEX0QhHvrlRnIShtZhVrZW3JFj8BVwMPcZk=;
	b=OP7ftpeSgOVetTJrCAd+/+Y7KWKaKpVNzecNT4QVhnO3yHO8V6qgFdfzxnmuaY/Y
	7kYIfj8w0ZDC/PSddOvdP5u/sertJ+LYWMASLx8Ytie10iySSDDqJkTq87XM5zNDPfW
	WnM8hRLKc4Ss3XN3Kgj+6iU76JZwJGxKlRqBLqa8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d4ab0478-f9a3c77f-99ee-4cdc-9ef9-ca69b0da3066-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04cec90507019990a361368b529d0e23762fb1617819e5b6a6f3f4cd9f2cf2ce
Date: Wed, 18 May 2022 00:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652835419
