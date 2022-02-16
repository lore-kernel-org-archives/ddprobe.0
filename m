Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1E57C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645010785;
	h=To:Subject:From:Message-Id:Date;
	bh=EcHPFcZO6mhvazeQ7cEd1ODFkB7l+6TJna0dvUx4MlI=;
	b=me++HkN99cHVRqXIQgZ2pOzEpdLDL6uSP84mHC196uMBAQl1J8Vs9SLsu6YtT+4A
	AW2o42Ro311D0lF9xODUqiZHzjkrcrr2FyYnSzML63HKci7shVAXAsSI5dN3WdGgMdr
	7YSMjpXCq+GxVGnhDKahXuOOHI3FlXbiI9CO2GmY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645010785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EcHPFcZO6mhvazeQ7cEd1ODFkB7l+6TJna0dvUx4MlI=;
	b=hjO8OpDLIOrZWy9iMgfOg0YQ6rnF5EzC8lq6yacAO4lYzqQYY7A3FWuAtl44k1wK
	BQVo+C+dsl/WSo00kSMt6i5dy0GlwCcfDuU11WLQ3ucfgZr7FWmXuZkF44OE4AkmBWC
	CNNrKdR5wzFwVJPfb4hcZ4p1kGjAAUQpJB9ILtsc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0248923a-8b344a93-a5a0-44cb-aaab-26317bfc4ef0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e80945347225027a7449dd2f7c4187dd8c9ca6941a747c216b6d93667c66cfeb
Date: Wed, 16 Feb 2022 11:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645010784
