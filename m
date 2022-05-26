Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F541841
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 15:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653578819;
	h=To:Subject:From:Message-Id:Date;
	bh=GgcqmUpp6a1b0u0EREzOtQG+3WcQmuKyEZjGghAgFLQ=;
	b=iu8oX2Dp2Wyk5/gD9MEzzxXY1E6DxN6Be71eCdFbsPKCZwvMyor+Jy2tLyvYtSKC
	rHzjdNZ49+J7rHqGo7XKp2sWdDHtAy7cyhEGqW8oCLClGXQMd06Z37ntIvxwGBPYK4S
	PWiI/Q4gDWgApDvZuMhDQzA3uItePaox3MVKA2vs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653578819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GgcqmUpp6a1b0u0EREzOtQG+3WcQmuKyEZjGghAgFLQ=;
	b=dXM0L0kmMoeTUblT4tNlCOwJ0VZBrXUoEYc4nicbv+rAZgNlHxS0Oj2mii0/+nCr
	8KwCfOeip4jmgaKX9O03efiqfX0ldd2A5Oeax3T2t1UF5ezOwE7k+zt/D8EtPEzpFrV
	n/U7ofw6kbOAD9ZoWca1hmwYhPAxzcapNeC9ywB0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018100fa66ac-86ecaef1-6c01-47ef-adc6-89901b4fa011-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa3f5fecd0d3ed14dbf683380357816766456d5db7514bb65f715c082cb5e212
Date: Thu, 26 May 2022 15:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653578819
