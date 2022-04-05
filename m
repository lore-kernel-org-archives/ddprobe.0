Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6B415A7
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 04:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649132338;
	h=To:Subject:From:Message-Id:Date;
	bh=zx24CWbr0tQ2W9Zf0IlhGKB8OJK6vndZ5+khPP8LBUU=;
	b=WMwD604JkU3RiTXY4efVdI0weZiB5PPcMSD/it9YcfgQJzc2Q3fbmqNrmJ7vjpPP
	3WT+xH6vZwgBvRwWTnGOSsaoBCXLZHlsbu8AneIX2RfLb2N1ep0yc8anM4+IFKrvuB4
	5D9oc1cJtO8qg4G4PubEfqzNj6JJXfxLgoLdzGpc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649132338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zx24CWbr0tQ2W9Zf0IlhGKB8OJK6vndZ5+khPP8LBUU=;
	b=ZzMcD8Um05h6qxv65bbhYAWH353cjQ6sEUdda0T79HD+GNs/9oI+6e7GMnU/hh0N
	Wz0xcZa9kQBrgbPhHHdekzgaNuW3cI8gJDLMrL6Akyd0yd5IRNjcrIaJ07pYDyBkBRq
	seos8t1voCw1Pw7UpGxTnGJcEpGpjvDKWukV1sV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff7f27c46-956fd729-74cc-49b7-a2a1-99d8d4bacc04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dbb5f6f77483c2855cbd15dd32e4f0dfabbd7fc32da249b53c9ff7310522a80c
Date: Tue, 5 Apr 2022 04:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649132338
