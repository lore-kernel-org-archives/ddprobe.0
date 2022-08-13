Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D62622
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660354252;
	h=To:Subject:From:Message-Id:Date;
	bh=HY5QrkemeplcV37HvX1dDf7TYjKKILuDUNzuyeBqslo=;
	b=A8l7kdwDCCMaRKptl80wUFaUozZbK6Pf21a53rhd6Ece/MyQmxQLgbXWPb4XpFCJ
	Ep1XRzuIwp9vT6pzCfKiBxQQtvxNhTl0PAwS3IMUcJm4S2jGKfO2fkWin50wHeEYvMZ
	Udkf1HRmWDS82xxLKlPdvOj7y6h4SvIrkuG2gh1s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660354252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HY5QrkemeplcV37HvX1dDf7TYjKKILuDUNzuyeBqslo=;
	b=H8AoEAZDLzcf+UHjzJzyXlWCw94i40jKWaHVzGzzcWaE0eXtGaOtQVPje+JgRZrq
	IAc9MjOXNqzEw0vam7SOCgQ9Y32YRazSdKTF58i1c4AnB6GJDDLhp3Fkn9rRLb1HhWI
	cGfNsFpJzuxFyzmMzFMOB5dALsJveY8OHWXmgxmg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018294d34f13-e67b47aa-e34c-408c-be3b-8f333dbe0255-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b80423080b1bb0f9809782b27c67e060283c05a1a12cd78e9b23eb5546dd891b
Date: Sat, 13 Aug 2022 01:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660354252
