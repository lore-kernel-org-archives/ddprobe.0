Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A21812F29
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661010653;
	h=To:Subject:From:Message-Id:Date;
	bh=xV4M96DHrAgrrqxPe0mWscG9nfogji/efcSBi23dgMs=;
	b=JQSJsQkeyMQ0JMwMr4OYYZv2mwx0tdETAvLQ6NgBrr8wfcBgN+p4/2XI7njjgNvy
	yc+IdW1o0HAKKdCjrwSGnMmVQusoXtU/YVE90NJrt4pRv6i9dUd72cqPwG0N87XpQa/
	XYbjmbSxEPB8DPY+xTQMNYXDi0VkrENao8arCCiE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661010653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xV4M96DHrAgrrqxPe0mWscG9nfogji/efcSBi23dgMs=;
	b=aKDoQqLBAFkxp786QODHB83ez3rBKK34vfOgSdbnkQyfAP268jml+2+Q0pIdRm7C
	MB6LQoaoovR2IHbKhGUUYDASQBedaiFArMqfwyr+qKT0TDSyEsVrICJJTa6v/1rAyn1
	JWPAm2uAjb6v3lopZIV+CT3yKoG5wo7XAPgMKqgA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bbf32d9a-818ca3e2-6436-42db-8ea8-f0c68c4c5e93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb77068b1e21d771f0f7299453ce6609fc1e67dcd4d8e11f21fd1b831bdcf930
Date: Sat, 20 Aug 2022 15:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661010652
