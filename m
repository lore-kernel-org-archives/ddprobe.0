Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0025D20EA
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 03:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650081178;
	h=To:Subject:From:Message-Id:Date;
	bh=mo1eBxC1hbc4tXpemPlGFy7VfQZOSQGCEXBFP3DzR8E=;
	b=QIL9r76GsRVYg9CJKgx0caJCuVd0faouo0KMDAWFANRx0YlkAFxeyyRdhuBoLs0O
	MIo4Xm6xiwHAmhghkudgbLOx59xVFk00B65oVWBcs28Q7eJ80Bhs/7drzJCUiUHLMNv
	LyxstwGjRaGQ3Bblr3mHygd3UWRIR5P01QNc5hpk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650081178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mo1eBxC1hbc4tXpemPlGFy7VfQZOSQGCEXBFP3DzR8E=;
	b=iyhCiqCTWZRYicG/pOhcbo1d7UMw1XEd5F+gB0cFcU/Rbpln9fVU9lMoj+7+z+Tb
	o/cvudiGbLGMRFfc5kAEsT9S/Vw1mnGL+8RnMUNc27T1bT9CVUr4giMkkiSl1dcDsr4
	EKjgd4HlpMMNDndNQi6awAxo2fQ977Hg1mPZoMq4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803080a28b-bf511a0e-4f9f-40c3-bc55-30245bf79b2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08755b00c1706334476972cb40881c5934d046f73757f09eccf92acb146f2e3a
Date: Sat, 16 Apr 2022 03:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650081178
