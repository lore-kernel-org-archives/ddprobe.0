Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6577B
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 00:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648771558;
	h=To:Subject:From:Message-Id:Date;
	bh=/dbZ3maSM4nQmcak28sfrQNlxxKcAGhpl4Qu3Adl7N8=;
	b=g1qWCs2RW6Pldam4SR8Th+sNKUMxC6/dExU6OSPEDFEPWuP+e7p3yxODqW2sxq25
	JKwSDFoZLq1+p9VtHmgDlwBtDlptmnykzY8l0N+/twZoqUIjmFNT2qkAmst1oYiXFe5
	TXVc13BhpTcpjHz5q5q+wGpWnv3gZmG49VOV+x48=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648771558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/dbZ3maSM4nQmcak28sfrQNlxxKcAGhpl4Qu3Adl7N8=;
	b=Bw6rnuD6CVmSHlG/cEie7Lfpr8Jr5sdX01aQ8YcvCwyrvqksrgYwgQEgNiDm2Jz+
	7a+M63HXVrnGitjXghN4cpQWBR27Gh+R8N6dR+Shfbgfstei7PPCb3eOow1rocPAuoG
	pMJYT7ZfYaUXKfVof3YxXq5qBjYTPW+67W4NIGGg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe2716b68-10fc4f41-f483-4f0f-b3ee-0eea5cd20abf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 585354ea5c2b12d75c98d25985dcd53679218121723252f289c33d8c92994113
Date: Fri, 1 Apr 2022 00:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648771558
