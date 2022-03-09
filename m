Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97B675127
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 21:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646861185;
	h=To:Subject:From:Message-Id:Date;
	bh=cnX10tojYKyq5YotGeI/J1ElKKEn3uNNfpeWFffm2qc=;
	b=Xob0bIYOYgfqk/d/BPeQuDI/HEyHsLZSUMqIudScauiMjolISMfmQf7zbxwFBQti
	AY78xvf+Jv8gd1Dh2bfCBRB0s/RZHtyUCuKplSq9AmBw5/a847Jbs9JKeg8Rw17dk7r
	axJzIQlGy40pw+RDQVcJuXRS5sTd+6HQHfuMK6uo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646861185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cnX10tojYKyq5YotGeI/J1ElKKEn3uNNfpeWFffm2qc=;
	b=NGdvbJRTZySGnjpM2fkh2/spEFRtEMJXng3ei9Cxcl9JwUVhKGy525Y7ujhpdJrT
	8GVVxHVVE0porQrGrU26kObku0fcJuev7JgYRpBVyza1zn9HCfWFL333A19loodU7F7
	bv2p28tX+UmndSX2VSqVb2KPIbOZcZMqPVPPpbUI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f70936faf-85c0c0ef-e4af-40b2-be96-34daf392924d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1c1453ca97c13839e255ad4eb3b49373f965f4f080f9421ad26a0995d463c4b
Date: Wed, 9 Mar 2022 21:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646861184
