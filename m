Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64CC838FF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 22:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645913784;
	h=To:Subject:From:Message-Id:Date;
	bh=78B+3Co43rOJM5SZywR65/ylwEdLpeXUSEoPaEomyDg=;
	b=cIB7Xj85Kb2kMTBZKMo1cTw0sXBnmOiNDAnsavlCp5aC48IeqGBv3YHwLQyR34Ub
	vSsx+KPrZnFNa9IRgqFnfXl+QGxGfQzowxHl+vZVZcVOE3jkluT4HRNgw3hsvbDSVCa
	PMSQgAekrnsAi7BBJFBmYYtYbRHL75ZENxtBotYM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645913784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=78B+3Co43rOJM5SZywR65/ylwEdLpeXUSEoPaEomyDg=;
	b=XuAd+CQhrZIr8AdDGc0pVQ8STASpjH3EIE1gzm/uTuiSG+xvDjGKoiB74D/apdGc
	bXPCe2E+whZIPXICfJG+pvgh9pgbR8XyTOP1i/Dj3amPoI8y9wXhY5Ga7ZE6vuHNPLN
	wg5Uu35Y69tDBcBK/B5WmJlI5+1xq/GRtSCFPCPc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f381b4189-2ec2feb1-cb7d-446b-9dde-3c4d30fb4dfd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2746990032d97ba8708e4f7a953a34d642935fcb6b089a54462ebe68fac2b113
Date: Sat, 26 Feb 2022 22:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645913784
