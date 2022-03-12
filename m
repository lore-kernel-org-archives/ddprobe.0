Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A063614F
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 20:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647118285;
	h=To:Subject:From:Message-Id:Date;
	bh=B5PSh+Bnprqu6vySLlxR+ifPE7uWSNnKbpCrKNoFxBc=;
	b=QJ8RU2hplFkSCNF52oSdsmxQurM5rlRew7wqhcYQwGTBdBbaWpmPPpg2cuWSR0gq
	ffQX5BtVedye8GGQLcEbmmktB75EoyjHevWFIkdOaZ1TKF5kwlBC3zkwNiO7VJkw2bz
	cRS8r1HpaEdex1qFynuvovH2ednkzbho5OJTUJik=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647118285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B5PSh+Bnprqu6vySLlxR+ifPE7uWSNnKbpCrKNoFxBc=;
	b=H4nbqXjwP6VYvJj6g4pPN3ldf97KIElC1HKEf3W9uJ6qiD/mosI3KKMRrMtKD9sM
	/rYpOjWKwT4XjylEad0WKSNPDPG8YPmnXOX7GsEZagy9ie4enTJ3CQ/SwxrXUv5vs8r
	ED1JnJ3qqKDV9LDY5tB2VHacUF/styULBu0y0kRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7fe677b2-bf61f87d-2981-496a-8fa1-150060e552a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c94b3851d7886bc5c8ca6432c9257fe8763d9cb61c5fbecb82b3699677e7d5e
Date: Sat, 12 Mar 2022 20:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647118284
