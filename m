Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B1F7E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 13:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650980278;
	h=To:Subject:From:Message-Id:Date;
	bh=fMFmk/wqxF/UU1ET9GX0dWW691htTyLxUOQipV4xAX8=;
	b=Vxv+rbA18CyPZap8dV7GRJagQ5L/2/0OnHlAbtBMF2DS3uxN44jxa3gRAFxeoUVa
	gpiGhc1zR4/CgdoIVG+5rtniyz8+xJuo5s3sK3iSE+rTBrjB9a1jBnHVCPyzwViNqWc
	Bugn9Q4hMIwK8XCkPzcLEYs5Ln57b1+FXe9nWzXA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650980278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fMFmk/wqxF/UU1ET9GX0dWW691htTyLxUOQipV4xAX8=;
	b=jsRibmAB9PeWBc1cmLF0FVyYslCIpgH0GqnC3eksrVhzrVWKA1mQrE1f2VwYVYF8
	pdHB7phHLddj8hVSrqffTDfAMkllJq1h8kyUiGFOVDhh6V7xmW3D+GshXfe2XaH1uvu
	67+c2t6Ep0op0ELbZKKk+4D+78z3oGI6BqhYn+Uo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806617d01a-a13a4884-933b-42f0-8104-a51ee64b9c35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ee4f5ab5ac16947570ef99c6c7da2fe68be2c45ad16a3f17367262340bd321c
Date: Tue, 26 Apr 2022 13:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650980278
