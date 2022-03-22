Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91874EC8
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 17:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647969685;
	h=To:Subject:From:Message-Id:Date;
	bh=Vonnas8lGOnrdTzY6TYMwhGaqx1ZlncVV9bPxtDoEQk=;
	b=hR/ATxWvPQjbT3Z6MXdc4zX95xuhrhSrOxognMXaXblYWrUjQj+dZWO02MwmPI7x
	EquAkvjt/+LM4khTz7ZvmMQ/egI9br3vbi+vpvLaelEMJI5eOQhgAhdiyypGDbksc1H
	wXSsEbrO0yWUb3272+umKeKiSjl/n2yo2tBsUDvk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647969685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vonnas8lGOnrdTzY6TYMwhGaqx1ZlncVV9bPxtDoEQk=;
	b=GTO/XCaq9A/weFiDjlUselHzlfgkBoVV0ejuj4h2gEmFJMAtPaT6yCk/SN5L9v/Y
	0Csi9w3pSW+w1JdI5pHPchAEbaC7A0afHIKUM+SNK27syeG2vDSL4wTg/WVGVBQsO5B
	z81lGcaktnuLtqVewugLV8ZXY3lugotkJXPOOB9k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb2a5cd5f-70b3e9ee-aa3b-427b-9eb9-e6c9ae020287-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e5813cdb71c761322d1c75240197a9fe19f64fc17f664a2c99e6acb4af541c9
Date: Tue, 22 Mar 2022 17:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647969684
