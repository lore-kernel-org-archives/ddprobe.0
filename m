Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8814D3D7B
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 07:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647588985;
	h=To:Subject:From:Message-Id:Date;
	bh=J5/h0074z4VHMPf5sRZgDGE6HuuzXoED2cciKMqsino=;
	b=jEW2o3QkWGsrcQdVXwnZ5WY7vB7VZyr1B6YWlKBSpEXWvJ1gR4YPMaPIy3BJcW7P
	azH/sotlT/UruQIJ00OiEp0JcD2LqCUUGnc+e8T4CTavI+j2rnrBHZ7d08Z6XsnEBmr
	xkAf30LgJjLlbg6opzyfOSFBnt7Q6ZjjA5N+5WvI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647588985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J5/h0074z4VHMPf5sRZgDGE6HuuzXoED2cciKMqsino=;
	b=MszIR0wfj85zs07yeiPWYm6ogMFUEXLW80AelupZiheaLGmTCNrLYFJ6R6zRCJJ4
	Zft2Mkc/HcWva5lv2X+Ze2FCVJxySMUQ6BJBoRKz6EdC5otqSjbsHnpMXL+7Y9parg6
	KfU7FCnU2bAL/uwJubS5NzwT3XmwLR/yqJD7/qjk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9bf4c7a9-be58f39c-6f94-4c3c-8754-315b407a4e97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b58caf8414e2a2c80db50bb872a9ff02fcd774b228fbcb57cb8df4fb0031435a
Date: Fri, 18 Mar 2022 07:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647588984
