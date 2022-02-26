Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1EB38FF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 20:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645907484;
	h=To:Subject:From:Message-Id:Date;
	bh=ORGanJX8nD5pVial8Ci45lGin1IkJuO0Y7crm1q8ht4=;
	b=R4fBMUa3sx6NFM4874i8pPRt6M7Krp1LYuZZMo47Z3djeOikROyMSq94bKGWdeoA
	VZl8NTKWmjOZ+K8PJyMUBDAucLRFNQ+J9vjeY+W/DEgS0NZtPUl4PVmM3fKcussPM7T
	8MzctF0jMrGGA8MVQqyRrkUzWjuBy37k1sP1YW6s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645907484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ORGanJX8nD5pVial8Ci45lGin1IkJuO0Y7crm1q8ht4=;
	b=MC+1Pl5+saGv7sLDS2Lb6tg+jaWdE0IfxVT0TxX2clBVezdTB5mHhMEp2xaV2/Ro
	sJzNw16I1eVxxk7KJgMtXtX9pTBSV3uxQApxaGsFxU9RoS1i1yf/KRYnXPqfsq2ib58
	hPqzUb9YGLKr6ZVGo7Uue6mJLuC6pMAISqf6K2kw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f37bb206a-dfd836c4-0f67-4b02-ba4f-61ecdb81a749-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6029dabb86a0697c745fd11eb00227cdd5306652b973f79617f18254e1bdfb04
Date: Sat, 26 Feb 2022 20:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645907484
