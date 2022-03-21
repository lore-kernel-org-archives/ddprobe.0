Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94CFA643
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 06:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647845485;
	h=To:Subject:From:Message-Id:Date;
	bh=PRR3jZedi+A2rOZiCou/Mr6Y3RJJr9xU/Y3OHvekcuI=;
	b=cHNWxSGaNVOiSwZLL5FUAuh5YI6dZXcLxpGgxR32MsgGZhNqL20AfYxCCNwK5mJe
	iRFyQ5weEM+ZaODIvn/Z6n9R/1iHNiPBEr5H6RUHwKPV0iReIOw6+esq6ZBWVmqCqJ4
	zeuMb0u33+unmr62dyB8syyjSNQgbgw533uye9Pg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647845485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PRR3jZedi+A2rOZiCou/Mr6Y3RJJr9xU/Y3OHvekcuI=;
	b=BpY+ezknGvy+bnw2I0ZQitrW4C6EvEg4tEJM4erXElUo5WETvP6HrPmc2Swf5jEU
	b4xQGMRaUzBKjoC1wE2fcgH/SQtkyjjE9fJNhLeU1PNELv8mn0hFFwyJq8+w2kQ0R+Q
	roy+GGipZNoai/p7+8DfgEZlEwQBK3W30tWs4WZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fab3ea8f3-c9530e00-c3aa-4db3-bee1-f3f30b73171c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d3ae1e38302ea28e574f0ec0384b0e20504c4c369238fc8cf04cee52b96a7bc
Date: Mon, 21 Mar 2022 06:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647845484
