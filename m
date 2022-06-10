Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A5C2F4A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 21:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654895939;
	h=To:Subject:From:Message-Id:Date;
	bh=7x4wGH2QPBVQ7vF4Fhd9mHm4wchwR+Fue/31ZuuuEp8=;
	b=BYZkOSzfeLrfAHlQ0Nqd5jq7OuigpH3f4H+g0es/rN2P1YpiDSND4dH2mCBWl87Y
	j0JzASFAMhNwu5TWIfu8UrtdOWshuJ46wNYK3IVITcUeXUBwtpXlVBlDj+BKOcoALyx
	hM7rQGXg/0z3P/G3OCxTOn5suftTLzRW9WU/V58w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654895939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7x4wGH2QPBVQ7vF4Fhd9mHm4wchwR+Fue/31ZuuuEp8=;
	b=LqV/0CKeHqwy4sRW0iInmTFG1jc9ko5YWOFK7F4/H8p8tPP/H+fhwc2Vfn7YwHZ8
	2wQ/+fJN66DC7QRJM0O6dje0sVcEdBj4JfvJT9+9wIvVVy1HKGH1qQgGDE9M+AzIc+4
	KCdmKC3Mihxf5z9ohQxvguJMWIN63fMdmAlL52Kw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814f7c0ec8-90c5e63b-92f1-40ef-8df3-3ff4b99aea4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e43f5db6a866066a78eda05b97e0092e3f5886a6382eb2f997b1ae833428885c
Date: Fri, 10 Jun 2022 21:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654895939
