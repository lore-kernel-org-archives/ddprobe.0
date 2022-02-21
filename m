Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80BA933C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645466484;
	h=To:Subject:From:Message-Id:Date;
	bh=vleblFM+ea1xnjlqM5DJQasBX9f5brHY5yDWl4BfuOw=;
	b=dwSSRMr7P7q4WUeyxja3GmP3/FIMydraZRlRYb7MtvdhqYNS5FdZudUBfmzBkQWz
	AwMobU+vFr29XEEvJeHk3ZfwiWEBgPl0amdHcMmAm2FMnRe+lBTy/xm5PMbXLgx/l9j
	hHeIhIPJcVoyQAsSYdTAEKkU2HoFEeUshVn8JDcA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645466484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vleblFM+ea1xnjlqM5DJQasBX9f5brHY5yDWl4BfuOw=;
	b=dA+t1O0ViSyf2dvNKWE5r53Rrt7kro71xKxwcyRq1wGfTZtMHUdt/aM19A2vxpw8
	tEChES8qrNOkj4qJdfrG9vVs0PaMB9/NKKQQG2KJ6YN58rk9AJdfpqYYAWew7+yi7VR
	nkrVSID+IYz1lzHh5N4CCsEV8opsiN9EiFQ0XyTw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1d720040-ac573bb7-395b-40c3-bd6a-ad56db0e184d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 795c3d7e832c89869d3fce0f459346b52aa8de6127a5a0a65fdd4e6a26cc2536
Date: Mon, 21 Feb 2022 18:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645466484
