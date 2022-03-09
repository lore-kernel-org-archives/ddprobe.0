Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A5F715D7
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646816485;
	h=To:Subject:From:Message-Id:Date;
	bh=WvOL9AlO2zNY7Iiv6ZrUXghPI8FvY1T5vuqCk6v1trs=;
	b=Ze/GsQ8EftAjHMMW74e2Gv6RQFG/8FDtQUb0IUib3xgkWPCTt6OianZ9VqWzhSb5
	VomYozvQvTJ0ETHpLRAkIEB5Wk0HY7q2AkUji6+FM/pVo5XhcdU6BcsUPUQqhenUpbk
	ug4ZQV4du9NKiZH6uYZsJnMd/AutPIWcehf7Z1qw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646816485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WvOL9AlO2zNY7Iiv6ZrUXghPI8FvY1T5vuqCk6v1trs=;
	b=ATybWiQ5xhWmD3nSVpt1TWtYsAfsp3H0tIoCX2kPoWB9R3UIiCrX7rQ1UK60Bg84
	ZZO53Ox6AMqjszbcQia9nRZHqmmzhBGyeb55Bi0cioEMQ8OaFQmBOAFfaYePwoZvETD
	gC+99Hffk+f0h0qE/xb4/YDvwdt3kZ2ctzGoRBx0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6de95d92-6bfa63ff-e507-43e6-b71d-e2fea64d1478-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3cd8477f6f78123f46c691586a06b4c5f773eddadde08bf6d59c52ce3da9dc8
Date: Wed, 9 Mar 2022 09:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646816484
