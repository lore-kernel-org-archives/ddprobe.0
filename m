Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A723D6E
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659137452;
	h=To:Subject:From:Message-Id:Date;
	bh=hA6PjfoeGCk35+ytbDWnZ3GA0jp43RCnBuihi/RZVgw=;
	b=JKoIICXPY/Ijn5Nzk0Orma0ZtqbkD1jOg4+GKKSN5FdwpW7jf/pG15nzrsdb+NMh
	tKiVV+YSAQ/dWFPU8GeMPOuvc6O/19gihh8UohqdYRWdzr2ZtW2SRVUXzuapp6ej1ut
	QtwVq20F4I3TviIBE0T6vObUU7QU/oSyQMBB0uFM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659137452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hA6PjfoeGCk35+ytbDWnZ3GA0jp43RCnBuihi/RZVgw=;
	b=Mz3VaJiGrrcxdbjHA/2GGs+TIdb9kfn0d5H+s2PkEdtMilhcUJcm7G4yxFkkwD8A
	WJWdbrYDkJpEH7uRqs9PuzEkYHdaqzan2Wz9xZjY7MoJwPRYZuv4ZVb819Ih/3y0wni
	t+IWGhqfjuttzZzWEApmylWvqdKi165XKgfekVyY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824c4c6a14-775e0442-3f30-452a-b67f-9f95c5456513-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57acdc160cdc9bf21d172026cad36014e24c3fdba46c0ad9ddfe397711e49e49
Date: Fri, 29 Jul 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659137452
