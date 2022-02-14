Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599F6EB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 23:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644882084;
	h=To:Subject:From:Message-Id:Date;
	bh=mhs9Yvri8YDD3PzjfpKwcQVGaaWBHlN/9Rv4C+bPaEs=;
	b=IXZ/xCv8iotp8rsm6QPS65qZCitiQA5Zxh9ksJ35iqo9WbnsMPztJ6qJNXsZYcRS
	mL1ADy6d1+PgzYENGiFRl5SDO00UtGInOB0SMR2yPi2wF2olzDMcLLUehVwu0YT/SOI
	e+5Uiaad0+TAJlXiulzuw82dExKE4qwSUsdj1cbw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644882084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mhs9Yvri8YDD3PzjfpKwcQVGaaWBHlN/9Rv4C+bPaEs=;
	b=NgPB+BzovEiUParCQCrDhgOuvqZyDIROMPRJ6hpdqwriZFP0KbLEkeX0YiNnqD96
	bl7NK9bEBrSbow/t/SUI9joU+gig7G5l4x1z0RVbQiCwru1GnIu3cDHI0i0YD3MGK0g
	ShxnOwfQN2aS6XZ1oj4ESIxrSKRobwH93SvIVQXc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efa9cc3ca-40e61abc-4fbe-4016-a8ed-7126fb931843-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec359110fd15add62297c4ec3bafb2cf9cac6bc378bcdcd736eb13bcb5768806
Date: Mon, 14 Feb 2022 23:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644882084
