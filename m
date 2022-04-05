Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162627C
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 10:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649153458;
	h=To:Subject:From:Message-Id:Date;
	bh=VJre4Hci4eNrda3ly+M0IXNMuR7TKC5Opr60rbTTYcU=;
	b=ayA5rm7OqF0iJs6gHNSnUhEw4vrkiwLKXn12stLaR4EcBac2mDKoCw+amMmnbtzy
	+nWZ/rU7XlSQd71eNMUNkShO+P9x7f1DP5IpafN8/M3vjsIeBtHGXcK/XTxfZ9Djw1W
	4USGu6qxLOTBWk4zipk5zWUtqMH7lqIhhBtLR/Uc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649153458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VJre4Hci4eNrda3ly+M0IXNMuR7TKC5Opr60rbTTYcU=;
	b=kXAr+fNm+EqO9bCDsxAv3szJ0Ar6LqLOHZD4xowiy87YDY5mNI1gJlnqAVHe11Rc
	+tEfcOO/uLbuF4X0DXg2DulZua11C0MBvn/kZY+Ve5u+8Ul0hgjp244YSx/Nfv3nMYG
	sXTp/4dqg6tnh74w8M6zrMGvSwakxq6soKaZn/xU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff934c031-44726379-e9c1-443c-8500-bd5f93950bb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 869afbae60c7c806e588ebb933f174a8260a0193a60d6a7be35703e9a7a353d9
Date: Tue, 5 Apr 2022 10:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649153458
