Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9817FF
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 04:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652676419;
	h=To:Subject:From:Message-Id:Date;
	bh=xI3EDlX9Ydfw1KTXjBoKTrP6zeM7+9zf/xztWGaCF1I=;
	b=L+4zGn4IMCQl2SzvF2kyoUtn3S+t7tP2asEOk4wXjitSvSBP9u9SJvKxbSTFJNuz
	yCsVx3fa7ZsbRSMJ/P/BsCEpcCBJMB2Y7Ajrflw2m0fE6zbD6JxSsdDXDpvYVM0wDNS
	2+6Iwb5aNZ+zJUcLbuw8AjuCDqXvIWPFzw+2IZwA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652676419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xI3EDlX9Ydfw1KTXjBoKTrP6zeM7+9zf/xztWGaCF1I=;
	b=SVvgPPJu+x8sLa5YmorzxdDuMqhLDguMQAA2udBmIWI4/Xb/53XCy3Sboru6UVb3
	8IUZlprylEAAHZkdoi01KshV3CXOLC8Yu1crzcG9RfNVBsz1tOVxOaGvZDbBd9O/mlL
	pYUVpNJ1OJXvCpyQyg7c0KhSSLsgeNvZR1F061r0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cb30dea8-45b470d7-981e-4f29-881e-02b61b81d261-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ecfb45c10977ebadf7996bc68eaca6ce23b7b649459b99a912088928d672e79
Date: Mon, 16 May 2022 04:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652676419
