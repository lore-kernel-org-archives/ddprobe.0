Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D1C7E
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 03:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646451084;
	h=To:Subject:From:Message-Id:Date;
	bh=9fwYL+cCwOIzcVnHFD5xuvwUN4AETr0oMldNESju8rE=;
	b=jaQJg+Aj4CDx/i+MwshUkQbDaVgFmLrndSAJc2WrYL42NHnj2y4Gis9JsYx1GZBL
	mIddc4wuH/ymqr0Br6l0fNxO1Qf3sOcfG7j8gupNzefDrfexm8q3ekKgQp9IfOLyKMF
	h4lbYsJ2bZN/EsOvgWOb3TYQGblYJBasERayHRFI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646451084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9fwYL+cCwOIzcVnHFD5xuvwUN4AETr0oMldNESju8rE=;
	b=UyqrufbMUy2+59GmPfJoQPKEheicjIYYq5X5NPrLiGpKdqCGk2V9x0fdxnh7HVjl
	4oVk8+7+C8izz/sXJf/eSCUTQKacL2eu+TNWGi+uzTewBKh+7jo4GEf57ZFYCpqNWjZ
	RL5TNEKyhkgidT8kM2q31ebL2Ie1m4iDotkB15fU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5821cdd5-229a0e3f-b7ed-45a3-a577-bd58b7f43a93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf300045fe95cf0ee6e7f8b5124fe5fa216e9910890c081b92d05d2dd8d042c2
Date: Sat, 5 Mar 2022 03:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646451084
