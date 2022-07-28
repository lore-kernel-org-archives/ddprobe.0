Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4CEB137B
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659009053;
	h=To:Subject:From:Message-Id:Date;
	bh=i23CWYAdSuO1JUlSj+d0Ln+14L8SPZm/IAinPvz578U=;
	b=IZ2Bsj6CdWzqTKxmsAXeYIlSurLrsXzapY5BECJnmnuCoFQIkuprrY98UJPZQA30
	GaQXdUw6JbGkkBrNwk1/LN781eD/lsiWqhMLoDsHiRSocVb2HnIEC27991e/CcS71f5
	L3os7ETOvsMRpMrluHVgctPpkwkp7lnMeKTzLbKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659009053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i23CWYAdSuO1JUlSj+d0Ln+14L8SPZm/IAinPvz578U=;
	b=RCvFiNx+uw9FW5RaZCHJ8nh0ZLB/uUmVrRNdfpwrHH1t7Zyj5dbbQ4MNI0QAoXsH
	ucSbuRHHenl2FPVhsolQ7Id8/coPHUAodPIhiMr4gd9akeh5A/mRTTlUWw+U4kI3zDK
	MOlbcJIsTFVuzllJu6nlZ+ZqZ4CucYYyaSA9ko/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018244a52f8e-5d7f7480-4c15-4a75-8fbc-31f408420a0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b8b5f3b44fc03b5cbc93f2ea3c8b44728fa2ed800e5c0bb2b1a1234ed0d354a
Date: Thu, 28 Jul 2022 11:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659009052
