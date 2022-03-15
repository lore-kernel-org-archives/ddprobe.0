Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600CD7A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 18:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647369984;
	h=To:Subject:From:Message-Id:Date;
	bh=XyxLz8C8Ar8mJytsZ5X6ToRGwKHUeRqBRAlL7AQ0gqU=;
	b=GW0W2oIEDtc9+iwT0k9GS/BfjTSZyY8rUA+r74OO8kximRpjbbJMTicrBOTRTdBx
	eNws9i07b0hSo/bRIv7pHdEU8RvfGlfIk8PETBT+1cRjJJOWVURI3vtOnCzPRZmH7+x
	SfYNVFnvUPJ4u4RJ1MU47HuWONgYagJTsOHu7W1I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647369984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XyxLz8C8Ar8mJytsZ5X6ToRGwKHUeRqBRAlL7AQ0gqU=;
	b=g4wuaG7vIHysu7xWYeaQwk5JLffs6jTPmWCI0Jlrxm7Hr6KtJSyUJkhs33/szBL/
	jdn3XH60xtPA7e0/DAphoAncnndLsbFZOWNwVllNMXSy37fPP32vVNWzgKyl+i2qV83
	9/FijV9qV0DX1R2o8DVTOzyn6jAn1D2Ioy28fmtg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8ee71b09-cc706f26-8764-44ab-8f63-cf32d7b5722c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abfb33d2a4c2a4e6302e75a791352339b83ee12bea3a2e10c0185479ac1229cd
Date: Tue, 15 Mar 2022 18:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647369984
