Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3EA77C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 15:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645803985;
	h=To:Subject:From:Message-Id:Date;
	bh=rBQPFsAjtZTUlitSIpAOHsD5pn+K9n/mWp9bB030LhA=;
	b=VEZH9XCcSKRd0B2c6UTdMoRsQr7QiufMuOdAGdYlkVYy4C1690GlKOidBbId83yt
	KQzuDisa9hksqHlazZHgZwYsM5gDE2jEkeFsuCaHWHPRFp8PbV4zm4jkjkH5SMo6BEb
	AmQO1pcFCexCAikNW1QxlSMdSQzfLRZ6wgU577B4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645803985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rBQPFsAjtZTUlitSIpAOHsD5pn+K9n/mWp9bB030LhA=;
	b=CO/sItxY/m2Xt652xA8n4G8eujHNZa2GMUxERuS5kuixa1uQNS5YMBQlwMi3Di/8
	5ICxqk9WGsOXHPkUSHe2ZB1vaIN7vJerz7aoAIxeFVrwL9q3ewrmBOqk3fKyEfs5IPG
	l0y1Lvg6kJrbGeMv6TbuSfHH4f5ug/dpvPYPM28Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f318fd794-dc68d693-5165-4bd9-9cd6-c5f82bc9fe34-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5b5ae86d37a1953fd3580c6f07c8354efe8c302860bf05c245c51a02d8812b0
Date: Fri, 25 Feb 2022 15:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645803984
