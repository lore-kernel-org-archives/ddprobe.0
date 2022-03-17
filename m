Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 903A02F38
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647514884;
	h=To:Subject:From:Message-Id:Date;
	bh=9qzx/4JfVfeWbkqaALJleMM3Z96/SBllP4ycLGyOW/4=;
	b=N3adNVh++a41YrjOMIspfrKfW2FalLjLMqWMpGZJdsOA/9Ke7oGT8qA9VGs2VbIl
	irtwcT2UpJflli4RNzc3klFt7wQr48JLpttsmqI1Bd7Bv/B8iZaCJE1f3DhPEekHur0
	CKcfFXmQSnrZmZyidaF0NddZe3cB65XZQ+oa6mxQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647514884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9qzx/4JfVfeWbkqaALJleMM3Z96/SBllP4ycLGyOW/4=;
	b=bjd5BOf0ifsZCml0iLBC9Diy+rpF5Nhih2Lic0MCx0fa0G548H+0zvWI3FrO6Gt0
	aLuoCeCukPDH8uhubLGo4APixV8kxP4Eq/3hpqgZuQfGGmcGg31EyGaDcXlOhlSWQ84
	zwpZncEaU2Y7VcGvAA+JNlFtQW9aYgOOUdFPUftY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f978a1a91-20e09f76-1251-49ca-8360-c34eab608b55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f54540ac74e4f1d4266ebad3329b904e72dce74176a83e02db061b34e985fd2
Date: Thu, 17 Mar 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647514884
