Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED0B28E5
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 17:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645203985;
	h=To:Subject:From:Message-Id:Date;
	bh=2OWAVz2wGq4YcTXF3ClSLyHxjayyDV7rDMsIelfZtxE=;
	b=h2L9xQYUjlgLyqPBXWbTbtMndhpi5Mz05feu7j/OqWykCydV4y/rYnPMnkRF4bwF
	IBglDrC0IRQz0vo7kYeRcnkUcT3YO9vyPpPIOnPQazHzMJPQdPIp/tFMu14KOFNB0wm
	EufAZKZoGThqRsMmAhNBzBtzBjdgSAHphFXqIFxM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645203985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2OWAVz2wGq4YcTXF3ClSLyHxjayyDV7rDMsIelfZtxE=;
	b=cm71xotmuDP2dsQLS7cup3u37VqnF48wmIANm6Ju1ByosmnwcVwyc3VFavy/As93
	HhtOssYZ4a/+13SNfbU1dKP58NzMBroe3fX+DalmSweNX6tHqY9DVcq/RlkW2aF12XD
	HIV3T32RZIPSulqY7C/0plyHBJ7Nw9UcD5y3yG/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0dcc920f-7a18bff9-dba1-456f-b74d-493a412c70b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21113eef3a2ecb1efe2dbcac171150d82944ac8b5d669d4f4d2d57b660a3e5f7
Date: Fri, 18 Feb 2022 17:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645203984
