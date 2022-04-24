Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0161A7A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 17:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650822238;
	h=To:Subject:From:Message-Id:Date;
	bh=3K2bvFcK5V1tzLiwsOXgDN40Hj/scYUw6HiVnP8WnJ4=;
	b=GlmvxkSlgHgXMD2m4sK7rcqYNa3WpT1W3r4XjKb0OYfgeSDLJmLeXUsDU/zBwi8a
	BvlHFZlzSJoBRGLUPkSpmdl7bN9EVJrLnr/Osap6xWXpK4Ya17/k9JqAsvBVsjzlvY0
	1Kp8+3Yfv4xy9Vma9MeO7leJDy7DdSRSjWD8p9Pw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650822238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3K2bvFcK5V1tzLiwsOXgDN40Hj/scYUw6HiVnP8WnJ4=;
	b=SIra4kGEV/7pOsw1feG1OuKxk1HVYdJ4JcFsaOTg6c2HpiyQ3yvhIeQV1QlMQv1h
	hrDsVbjXlIoQbezCG7W3N6s1MAcOLtST/p5QuyA2MfTD8L81SlghhUNF1JS+nHeHeRX
	sS2Ep2kwaV6a7hVX734uK/hPpxrHoZx0Hg/HHLcg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805cac5040-51d4e607-506f-42f4-9536-fe686e75c4ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f778acb8b52e86c20497c9c54d55fe01cc55b49a9c6f47520efb4ed74f49b4ff
Date: Sun, 24 Apr 2022 17:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650822238
