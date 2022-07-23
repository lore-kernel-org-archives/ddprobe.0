Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243A77E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 19:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658606212;
	h=To:Subject:From:Message-Id:Date;
	bh=/u2nnh1Cp4X+SeVvWKRP9LqOzLo1gjU4WdTXQ3Voogo=;
	b=d49Y265B2bx3oZQs+iV7o3ZWhqj4BHnmVnHpTSLX4IioYe/fqHBHPky3Oy0rAPa3
	AkwL+HHtbTFPrJ185Dyn9kjC8RiKfk6z9lwROFsb1EwoEdinxkPvDuZoHlCjes3YE/Z
	beCXACULQqBl55g5CLQP35uAj56sjhRHdYKg34Vc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658606212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/u2nnh1Cp4X+SeVvWKRP9LqOzLo1gjU4WdTXQ3Voogo=;
	b=ImxM1ZD+NvCfcDNWLClctNk8mIiv85YwQ4JmQzXnF0SlEAPbae61DFMdh7Fk6SEG
	L0aYysvrORFuAGEwlRxPHjGK/8TudNCuepLshCJIQh+Gylh11qJ48AWbRey3+6i0Pzz
	c31NCc5B4ADl1w9gyX6ecTXoWjq7VH8w421980SU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822ca254dd-60528b27-5bc0-41bf-9287-bffe950ef967-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25d038cc6438648db3b94ac623084093b7152859dc391e3da324f3462027e4fd
Date: Sat, 23 Jul 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658606212
