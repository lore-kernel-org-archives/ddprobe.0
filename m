Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C153FE0
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 13:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656941212;
	h=To:Subject:From:Message-Id:Date;
	bh=RVEs3hYxaHMAUO9USY8+OHhdwcW6EP6ZgXn50ool/Po=;
	b=gbCMaWddd8+W3OsDRBr8SxUevhnuoMlmTP9npqdAQB4kh80gF8X57jP3X9mEdAlO
	KmcJfP9uh4ewCPX74uCuPckSU9tCI/dFh+ZGBjiQacqDsmD7KeMjiz1DbPV8Fp6dd6S
	YsBdz+1E/pOJA74o/LBtTYvox3hjxRF5sw+GJtos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656941212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RVEs3hYxaHMAUO9USY8+OHhdwcW6EP6ZgXn50ool/Po=;
	b=d2z5Hig9UW3h1nEIyrxuncHtPvFt3TjJHeSSWS/uB4k3EFeoz6PYCOhPIpMp7ugF
	EeOffCBF8z4cjjE4bRuxy9sVK5WEI2dmESp8qijVKlug0duSctG5IeeQC8DtfZDVFeZ
	vPqRZXktNTKqwrssIvN6zFkfFlVIQ7Gp5el5AOuo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c964724f-749e4d75-6610-4356-b20d-564cab5d9d6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f368996433e5e8c042f9aa459573e4f010b4123e0163e5f98cf1aa6b4c3c2523
Date: Mon, 4 Jul 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656941212
