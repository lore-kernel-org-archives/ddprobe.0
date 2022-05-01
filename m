Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA5A2907
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 16:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651423258;
	h=To:Subject:From:Message-Id:Date;
	bh=+g/okIUKmukGjNs3OwVieQMLbhmf9JJeCSV4FDBFeEg=;
	b=GT6EJXjKMslHfHJ1j54FZfrudaHm/7KRMau5bE/j7DoG7xey/0fyNZ1UEPn584kH
	CRfnclg6qdnIXh9EoXF6aacGPmc4TVhRTDxxOdSYRXzLbvUyowtrkChlJjAsOShAKe4
	++vmGLPPnLEYmTyYvVLcRzc7CxacNbUWXybSTC30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651423258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+g/okIUKmukGjNs3OwVieQMLbhmf9JJeCSV4FDBFeEg=;
	b=IM8ccN2HNPKlZtNxe6NxUdt1E+5qiaSvk6WwzzDmwwZHIqgld4LHYbAg6VUMeMLi
	YaRaMRQitFolR4Id8ov4PwmcRgPOCO/q6ankAAORcz65sWQp1nvZOYBvVoIA68HXaNn
	FHqI8db1xQUt5fI1bHbDDOV/Mq/KMcIRjTA425nU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180807f26a8-3c0ce76e-55c9-46ed-9ae8-afc2579e0b58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3daf4b79f372f22f0dec3b2b7d13fbea3b5c8ac746add5d3320228982b018f3
Date: Sun, 1 May 2022 16:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651423258
