Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7C47E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660582852;
	h=To:Subject:From:Message-Id:Date;
	bh=5eJHZToauftwm+vBObkPrThQ54YqlUknOdGLZ3KFRvg=;
	b=TSYDa0awZ8LoSWlXE0J2QO/elAUNcIdB2AJcEFRlt/t+AX7zO0VLHc08oRuiqgI1
	X4amTlGZ/h9aW2u7v7116tBOew3Eppr/5/pA2g8BOYfRtWLMAipAca422fxSkc4k1kt
	wwy9CAQIzxm7PcSjAMQTzehpwFrKQJqTSA1rkj4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660582852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5eJHZToauftwm+vBObkPrThQ54YqlUknOdGLZ3KFRvg=;
	b=OaMUNHgRyNzSyLMgXpDsnxAWBMWIWatzMHWaDlSOrBrGwNEWXZ2sUcdaei6AbUDm
	EY6DKF/3YnMhNYWfYABKqutE0U0t9ccbfeBYjcelok/XLZFpEbwRGhc0VpkHZtFnIYP
	F+Pdxa5VhoVm2bD0jem3HGjTRf1yrCNn0krKKecY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a2737804-8e2f5046-c2f3-414e-8393-5ca6942222d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91e698c4343452f8769719646711bc41579fa23e90c84c1b5c04b938d2fb649c
Date: Mon, 15 Aug 2022 17:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660582852
