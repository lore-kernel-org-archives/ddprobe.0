Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E3EC2564
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 10:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650622078;
	h=To:Subject:From:Message-Id:Date;
	bh=7iss5bwvvNsfYSENaZuw7/3v91xwxglNBwcSp2IVHP8=;
	b=TAqGSsfGAKdrJAopqjPWXOMdnnahtK4SL0b+KYl/a303PuBFvfp13dmInWKXG1/j
	Dxh01T29vL+TDNhl8iPP4xLWYQ39zL3nmKlgbNo0UagbzLP+DX4XCsMWo1+jiE35TFA
	pQX2gzEcyTzmPmLCHs03OvT88Q3XGqg5+SybOFQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650622078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7iss5bwvvNsfYSENaZuw7/3v91xwxglNBwcSp2IVHP8=;
	b=kOxpTu3U7Cl0Dl6C6Rdyu6nHwpanwhl+PhNUsaby+ivT8Lx28bgYPwzu44P0phED
	s+HVpKydnOh+ThWTj8QOL6LZW31soFkPXl1pj90Eb013qblgzhcvSwZuTn4OGqBectl
	3mL47yBUja8fL5lGsfyNcBBs/dZ/tzWUmqJCax2Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018050be1d59-d56151d5-5fce-4c88-970c-9b01982050a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed28f2cff870ccaf0f67511120d640ec5f57ba9ebcd376ddc7092dfb4b250cfa
Date: Fri, 22 Apr 2022 10:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650622078
