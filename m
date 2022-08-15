Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A49D27E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660585252;
	h=To:Subject:From:Message-Id:Date;
	bh=Vecpeok4JUxq9cnaiF7Za4To9Acj8h0S1D16Ji5A6/8=;
	b=f8qYKselZpt284NBlg/oJA8C9pAgKgIVGRlr0E+OI4YaGi7moShyUYnS58pv2mi0
	mdWCHAbyD2ssqQXPRIVtvbUHNz2XDXsad5egB9eOM1+tZUC4BSTpcVEY96crjC1OmS7
	zn4nNac8Y4VWQ9QVbIHtn9ozKjJ+FsJxziCw9bgg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660585252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vecpeok4JUxq9cnaiF7Za4To9Acj8h0S1D16Ji5A6/8=;
	b=NYH0dyFOl2hGRZPjxDE3XGSdua4ped1H4OpnFYCBw13bAPYGewJzwLYUOqPZ8e98
	lM75DQ10ShPvldlHSxBSBPYaozcwkukn92JoRAEtjl4D+lFgxYuBfKsC3hpbZze/d7K
	6ZGTBldMp/eQ1hIEiIr7dhzVRQazNRsODbPG6dio=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a29816d7-34987747-4097-4a83-b8f6-634534cc8382-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 006df19c18935b343e4245b664d05470d3da0c08fffa8249614f551d68f5fd27
Date: Mon, 15 Aug 2022 17:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660585252
