Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412E1A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867559;
	h=To:Subject:From:Message-Id:Date;
	bh=Esk0M9xbU3eG3x7s4R9DInbS2rv30N+jeVI/VUcUCQU=;
	b=e2P/N5PTDFbop1lp9JUWuvF3AmfpPe6jZtT74EGlSNaplBt4Qz50Z9/gl+3sbuVZ
	Z35cu2iQ1tq1pZeKQ8rNLmm7Za+RPokLRxNDfUq2AjhOdALmRsLcrasUTz/CU1RFdB/
	u3KPNSdBd8TAWWo98o7uLopj0oAngWvoOlp+YVFc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Esk0M9xbU3eG3x7s4R9DInbS2rv30N+jeVI/VUcUCQU=;
	b=NwORzToVxlLgXsAG0FusiM0XRfTA9ziUgwHOoyfPlZJzqSbp3mjpPl2KvO4V8OJp
	e5rkwr/tBP37BaUoj6DmlvoA/NR/17YMJXf6gtxkk4YAyk6TDIUtS2ceGwSmh089pQd
	/GgT45a/JJcfj0aEX9c2eQPUGTfxOp5Nhub3Qsyc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9bf2142-b7bcbab8-0ab3-438a-ab35-23df05a45d6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b276d068e5573879fb52f953f67a4ad7b2043fa05bc349b3b855e8b99599fdb7
Date: Mon, 14 Feb 2022 19:39:19 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867559
