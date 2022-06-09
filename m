Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC967C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 22:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654813139;
	h=To:Subject:From:Message-Id:Date;
	bh=1QoFy35Jqta/+YyTcrzsTA98xuryegP26ie1ihCqAQ4=;
	b=CO4x2rrZ9Ejg5Y+mK1QDI9GIwLfyQm2Ece9uHL9RUOQSxSY6Bs3C1f5Z5m6Q3ffZ
	p2lWitUOUSLk8jxcnJZ6/3UWwr1DFECGoeSUghkrnPUiMvypBmiuU/C9pGV9t9Q0Yqp
	fFyOb0JiWfu/lG2Qwr5rC2GCFBZFG9eOEuF0peH0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654813139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1QoFy35Jqta/+YyTcrzsTA98xuryegP26ie1ihCqAQ4=;
	b=LBjwmFsm8E4RQYvgclLZEr1H6UvHIjus5qTFVIQ4uB+u6gq4+IIMQvxTGl0/GmA+
	JvrVVTTm46wVG+m4Yjo9wQE1u3wpIlcd+fT0FZMPNXHupLxIzWYB5Ze2sAFspkqwEA8
	sMnlf/Gdn70Ql6DCqB41pXoWz/8st2W0grEMDHrs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814a8ca15e-8c5059e1-d7f4-4064-b046-94eafb13dae2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b35e3c1799afd5708afd8ce1f43b0801d8aece866b0737f6b9ae17ebf187b1bc
Date: Thu, 9 Jun 2022 22:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654813139
