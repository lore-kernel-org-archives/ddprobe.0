Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F57D3206
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 18:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655405099;
	h=To:Subject:From:Message-Id:Date;
	bh=w2pMN+yd9ZPE2zvSoTM61M+bpkywH6ryxB1bmUEf0lg=;
	b=NA8TIr/qpBLFroisItN5t7hX658PdKrVmA/JoMISpMt8dViREfv9+/+X5JrroeLk
	eCftvNnVT2EX0lqSkGBrtObLDn1FdgDXrXJwfgAitUh2zupWOGahPwkR6qJtSn8oNgl
	C/UIa4Pfjf2klwJBMj3ny0+zkuxc1JZ4Hu7cgTl8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655405099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w2pMN+yd9ZPE2zvSoTM61M+bpkywH6ryxB1bmUEf0lg=;
	b=bNlN3wz4YGhvHFH69ssf6rIN2BizVhM8kRsvr6DyOqN3i7LW50Q5YtWBHlIDQmcW
	r09BBevW4N59X0VTFLeTkeCNe+FnWwR98A+2RjpJ4XxWs8rE1DarawBgqwS11ia5TXO
	vhQXuIG2BmYEmPYKiUomKl1CueD0Nv4g7bukElss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816dd538e4-de745818-1d9e-4784-b93c-a6e79ff6ac5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb533449dae7b28b58506557315b32940e0823595940d7983e1bcde08c3a7908
Date: Thu, 16 Jun 2022 18:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655405099
