Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E627A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 01:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646874384;
	h=To:Subject:From:Message-Id:Date;
	bh=94UAAXJidEF6D9oVzBL5qDA+vbPT4NVeqNgkElCUtAM=;
	b=JFQS4ROpWJymK9gRZBKKwKZ+Bnw+dwNt5nKToGcnMK3xXVr0F5hyBF0E3ByVcYte
	xWbzVyE5nl7NgeJ2OfO+RzPucLloVs+LD0PMDD6uh3jsDVpyZcJjyL8+OkALJasw23/
	wVGqGFpevI0cnpVTFDdqVEarHbfzQo3G8Y7WElic=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646874384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=94UAAXJidEF6D9oVzBL5qDA+vbPT4NVeqNgkElCUtAM=;
	b=YM3ZU6Zq+EKrQlmnUH/DFcrx24BhBrAeXGMmJMuKLObTWCOkpXmvPjubK10CA8ik
	3BrSHSyiUintY45norEPZLlylCmer8zbstoB7ncwAA9tV4HTK1ldRTmIRE0HvADqQPz
	P1E/i5G0iq10WFbxI7p2SqFZmWRiv59Iq2b2970M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f715cd950-2eddfc73-4306-46a8-a272-fe7cb803a3b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46a5f98364a4875b86b3a5c1f597752cec144a98502315cc353e7d8bcee0c21a
Date: Thu, 10 Mar 2022 01:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646874384
