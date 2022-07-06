Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F9F258B
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 18:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657130812;
	h=To:Subject:From:Message-Id:Date;
	bh=0PWWC2akx9Ooerfd0u1BqL43Lsb2nSmtEOAdn4ZnWIg=;
	b=WKb6bO7djrST1wSAdr4WQ1WlPEnOJxIW6xwiO2NhwmrFziKrhslCu0ey9nmHx8pH
	zzv6xPYHIVGSCi4KYBAVf2VBku77vjMZTca2KMaSCR99IIqToQNLxhz1IeIFUOGPHwm
	fpZ+Un7vMVYvTGBhtJdd0QIpfa0kkcpl2MgyWTxA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657130812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0PWWC2akx9Ooerfd0u1BqL43Lsb2nSmtEOAdn4ZnWIg=;
	b=Cs6RgWmTvfXuDUT6SwjuVqr/HMq4jUthIDL5dcowA07iHJ8SI1jeS0+Wm4roIW6P
	RhCauYFXEalyj5ngJ9stIB1jdVelOEPqjDx9h0G60OSuoMVGLtNTvt6/dZDhPo42HOh
	j7fv/kEFMsc1OtK4RuOZsuN4OGvrZhQ7qKh2fj5s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d4b1838c-226c93fa-1b70-4ae6-8e63-a11aa56d6d43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5f0aedb4fde1cd81442d263ecc5692e936cd11c559ad02f10a909b5c6501842
Date: Wed, 6 Jul 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657130812
