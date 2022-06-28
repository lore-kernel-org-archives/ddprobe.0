Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA597A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 01:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656378412;
	h=To:Subject:From:Message-Id:Date;
	bh=SoVGQq0Dg1a5PWjrG8NhFEDKykO2aMh4/7/ni9oupBs=;
	b=k++4BJPUcQ0dm3BFLoZFdhk85Pl4I3B++a2VGk368CBwvjp5UfydzFRmAkL1cEby
	tMRoXES6Ch6eeCx72sUHFbJ1aTxWuo2qB0Nu5DBqQqHmygdCZPe1hJLuYN5tGkICIXR
	DoWlvA0kaf1ABV2nIwUaY1NBrEPOw1Kc2xjzb7SE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656378412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SoVGQq0Dg1a5PWjrG8NhFEDKykO2aMh4/7/ni9oupBs=;
	b=OQdRTLd3qgffJl+AOhuoVp4ZzH95HYPvXd8/LqehvNKyUuU8jl38syFychSLTO/X
	v4Lu0/FB3b/muta3gl7gJFaG+aHnAqF2H20vGfi2RLj/R4jmVfqu2kFqxpif38l21aj
	GKTnn2bVRTeho7/f0IHNOOZu1HL7I2AF/P10oyCk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a7d8cccd-7cb22fcb-87a4-4c4c-8692-32b870baa79a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72e2a8c68afe611b761c3b9ce696b1d06ede691c6b5f097a041d4c09997d6eaa
Date: Tue, 28 Jun 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656378412
