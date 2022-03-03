Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93B597C
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646294184;
	h=To:Subject:From:Message-Id:Date;
	bh=Q0N/cjb3RcW10dofrL5NL50cCsTTOZQ5d1xLBs2Nt3w=;
	b=b0lJf/vArPMA/vxCkWat7AQ73iQARJMkuh9KFQHG6cDnXlZQi9+P2EZRgt2w2HHy
	4qI6OIDc6aetRJqBchoqxv6a6Sre3UhL51yO+Zk1T9p/dS3q10CMyZfJSwDW7xOhACd
	7Z74TquGtndlfB9J0A96O9VW3mqxndPotbNHunr8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646294184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q0N/cjb3RcW10dofrL5NL50cCsTTOZQ5d1xLBs2Nt3w=;
	b=d6XUOQHr1eHSeU1vt2UnhuKgw50iRmhegE3cbwmxU5AkVSihbkpJxBdRP0UfcTbM
	n6y7Y0mre1hiWEkBbXqpADbDxvVS0BEEvS7L/4ShP6XB2XuOAquCKTVvSI1/Fs+FLZ9
	HIRMMoIkCB/oKhYasH+EyQPxv3M+TOabDSnLooQY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4ec7b30b-3b9c03dc-0dbb-413b-8d68-56ad835448a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 326add43f54e459b99c9ed5bb5e3e574b530b6628f7957a763eade00dace802b
Date: Thu, 3 Mar 2022 07:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646294184
