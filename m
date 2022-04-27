Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD767E3
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 06:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651039618;
	h=To:Subject:From:Message-Id:Date;
	bh=5Zpbl/NXqSgypxFFnP38O5oSRcOJ2UtYUW9F2OgKBV4=;
	b=HdzFjzj7lRQ8hcGNjoLMzQ74JUS8v5Vm8UX8dWz/swgD+GaFBia9GIa4CAP7/2tP
	2VWqHIyVb8Mq0fLBaF/XtUv4IpI9ZT8Cxr+nvlfucvLHXCUJXBvmRDqJ4RnPgTzIPgH
	dtDSMmk6/wSB2pEPecIIO+u4mcBeF06oe8eW1Ifo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651039618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5Zpbl/NXqSgypxFFnP38O5oSRcOJ2UtYUW9F2OgKBV4=;
	b=hoRQzLYnElfjHSwzjjPohOBRdc3vFZj3AmRMJIU2A+UbrCfVU6sG03ocU3+O/Zt2
	RfhyvVOrmQNDW8pWFQICHuT3s1+XPrZ5ZCtHhq/Ry7ckmWOYIzu10K7wwJgZFOf5CfY
	gaskrnL+KBzLBMrinr72w6ZDMQfjvUMXiH2erKI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018069a14514-90b5ef91-9f31-48ae-9ef4-79d27047a9ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffd5099b626a75342fe14de6fd903b56074ff5ec44559f84eca1f4692d79cf9f
Date: Wed, 27 Apr 2022 06:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651039618
