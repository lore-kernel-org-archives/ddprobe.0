Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CF9366
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660276852;
	h=To:Subject:From:Message-Id:Date;
	bh=QDU2OMvGC020fjFWwMlYj6JkgLMYJ2pyqk/ewol9VjA=;
	b=lYDvYS5BlLW6K1OZ4MKDupG4viUfuPP0rmuiW3WvzsCPt36Jz3yZ1prM1eIRx7nQ
	AmDtHiSMWJywB5eycKihnwyuSy5s2slAoyXIzK/ChNH/YH+4FZu5C6uj3gMcJx+angS
	57CosUao7Hr+mVdXtTw5MebyA8Dd94nAC6jG+ke4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660276852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QDU2OMvGC020fjFWwMlYj6JkgLMYJ2pyqk/ewol9VjA=;
	b=IpHvkZFEozOjsJA7dGbfTH0Jbar1L0ZWGS8tClDlGvWtvVajwISJHKGwILXjlc9J
	ZUUitgXHFAoxCZ2ygFJ2zlAjqPsAz333Xhq5TsvAktuT0NEYS/jgDoqlXnLJd1Hhp6e
	uNYirPo/4RbCfOBdfKtNZy77fTMV6didDKNNrvXs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829036476b-66a557ac-7e5c-4337-a0ab-068d21a68e43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9836c1209d29965aede4989dd4859fdec3098be062505b6462e63a71109fdb4
Date: Fri, 12 Aug 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660276852
