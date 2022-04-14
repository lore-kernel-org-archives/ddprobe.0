Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174E42F21
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 17:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649956078;
	h=To:Subject:From:Message-Id:Date;
	bh=OWavZmco67IXSzvchBjtG9LcqxXSGbqaFaQZ+CathfM=;
	b=Z2Q8gsO5a2/1KYsSMMDan7JkK32P21VcR2O1pG0R7oy64+F9CqhASUDOUkS8CqGH
	bqcnpX9pgaS7TeZh5sQwte/kUyqkTB3Z+dEp/6h4Hb1E2zdE4mhos9uV1/k3DfBiQr0
	4GiYL4CGEWzFGfhgOHbBQ/0ftjB942ck7TJXi1pk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649956078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OWavZmco67IXSzvchBjtG9LcqxXSGbqaFaQZ+CathfM=;
	b=inwkEqhvEpAWre8PxOB/+bDuS36BvPyYwTFMGKG5D+lSpH+CSYRZQRPA3Me7gDlC
	8SeMA2QVslxiYOqtsC5XRI5hdoAw+YyMHDC4x9T33jXXsm6y082Wc72mY5chB5yrqBB
	eB6XSGionU88W6ncHmz+ah7g9Iyg4Tprx1TkUjTE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180290bc2cd-27e2aa5a-2e82-4c74-a919-81892bb402dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: caa35f9701d871ae6445105994f1231c097a1685c81788608de3567c1ed804ed
Date: Thu, 14 Apr 2022 17:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649956078
