Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594597F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659367252;
	h=To:Subject:From:Message-Id:Date;
	bh=L1CXeqL0b9WDzI08xVahxs7nx2w8XtCPnRTyT5HTKOM=;
	b=lavjkO2zgC5hYbb/dHGUtzwSJKsgcVKXiITZvKTqILpVnSDiKa+/6jazwS0jwv/m
	0UKo9h9lka+S5kW3VUuWGdHL299cedByoNV831vnJ2pgE195vgjWgYymwDLqIZGqGBR
	/fx2h85ZqjuEO+L3PJ2Q2Wpiav7ZlBbgNwFV1f/M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659367252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L1CXeqL0b9WDzI08xVahxs7nx2w8XtCPnRTyT5HTKOM=;
	b=havOjU36NFh6sxa6ZdQtyW2OqLHzrMTT5o4wG4SBmsUWcwFv4nahZUi/Mg49zCN4
	s40s1/W9h2EEKbWKU2yZOqVBScEz4S/lxBggQNDLWvayy33HoDP62NBebelscCpv4Gi
	i+GYthAFvDhSoto5DGKUUtL8LhY+X5rMP/I4iubM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018259fee251-b213bed0-f94f-4110-9582-18c767e94144-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4413f147fece26d8e40fa699b076b8927772eb793ad2cd560b95d487a97186d1
Date: Mon, 1 Aug 2022 15:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659367252
