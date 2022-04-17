Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B8987A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 15:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650210059;
	h=To:Subject:From:Message-Id:Date;
	bh=jIK+XHRzQLlKkEntaKheEkQKMgZqoy0PnLywCcJ+i1k=;
	b=SmT7fl5hG6NKx35EYZKHftZFPoi7YsEf4h1mJJG4PNdxJktyaPj7ltfscTcCo+Oa
	Stca/rJzCm1tEC9WFidTjeo5VOU2gA1mWcFR7Pz3l5F4xAr8ahuyKDrfVUu2eCjY849
	WhqpiZ3QMkXAkeEC638xNdIKIBf0xAdiLADIvOf8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650210059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jIK+XHRzQLlKkEntaKheEkQKMgZqoy0PnLywCcJ+i1k=;
	b=aEv6YD74NE6Bz1gnA+AzvlnnVWXFLdKKz/vhvq52H/NiRqh0oRcVilJr1McpOCk/
	zzShVSLiV2VPSwyDX5dnGKI0vCRyZ4JNyLjpklj5qrH3a9vgCHIhZPIPUdEa/cUUYkA
	it3vZRwnqTAWWXuSA7JyJBzB+ij6dGxAsx+lMR7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180382f3010-ea2cbdf2-b191-4d76-affd-dd2c6d4389cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eec691061d1fcd527fe505647c73a2d08d3f8124532a2485f4b711a942cb45b3
Date: Sun, 17 Apr 2022 15:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650210058
