Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0A87A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 11:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650714478;
	h=To:Subject:From:Message-Id:Date;
	bh=O8z8aj6wZWCBkVqUihLe+JigxdyHEgvqMjth2n3hbVc=;
	b=Yws8l6MwldK6eSh2QSjys3jJtTsZ9t45uMxLiZAVJRTKp4jBFUlCRHHqiX6EzS5W
	iiB5EE9qZ7h0UBXlqOXAHKhAi7/+SH5+4f0fleR7fJ+O2aQwwgVVlMJxp+kDLRrVQZw
	qzPFz6o1LiyQ1IZlW5BMSWcTjp2aQ1ZQScP2kkoM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650714478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O8z8aj6wZWCBkVqUihLe+JigxdyHEgvqMjth2n3hbVc=;
	b=Fx/QhV7u6VX/igoMaabPGbns3QVPLHlJ0r2Fk9dHg0i5D8D/LDn48rqFg9+YoVB/
	/bfn/Ox62HwSC3j8b+1tfM3QO0ijpwTUSMpC2B4ingsGbOBLmgpVGe4PFK99htA7y+Q
	eamTLbvFb1tCnWaccO420N1fliihuMgYQAeYiaqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180564006c4-a7f44a12-3b64-4ea8-b044-b3aa2e0a5928-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e68b9f8b5ab8750025d013222923f8a0e8865c584472edf5ed29a1141e145139
Date: Sat, 23 Apr 2022 11:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650714478
