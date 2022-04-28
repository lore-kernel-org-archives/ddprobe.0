Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4777B
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 12:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651147378;
	h=To:Subject:From:Message-Id:Date;
	bh=YaBBY5th05t12y3opS7cQ3BRiHaOEaNgfpOiozIxfqI=;
	b=AYGm1BVDSTZ3G55j56lMHhoShU19veFQCEqbiQtU4jNxZjS9KkP0+LBvfAm+9n4f
	2zXPYeDUXcQx4A2e987iiTHwsXYU16Upfg6AGtzunL1UUPyvn0RfVIapgPEs1QxXTEa
	7jqhwAYISgkFdeTdg1HM1YG/iFJWk3wh+oEg4cSA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651147378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YaBBY5th05t12y3opS7cQ3BRiHaOEaNgfpOiozIxfqI=;
	b=juB9Anxv2jtTBBt0EyvlVH+vN2Pj6XDLt4RSaw9+YyPV9f6xKm8eMDlOQMKkOakZ
	8+dr6mqRIBwRN09CR5EHSQjLpVCRR6AW4GI85zaeb4lKgL2dgNgB57/YOGkSJ6mTNaE
	HFL529YHmjMHiBj8RwqQ2zpllKbfKNVYQ5etP5ss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180700d8e56-81dc9009-ddaf-483a-9a13-2dc9613e9fcc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6800b0cfee9128083f0279b8b70dcfc22991690b5b1ca4743eb680279f8d5b5f
Date: Thu, 28 Apr 2022 12:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651147378
