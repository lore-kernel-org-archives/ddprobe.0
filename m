Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BB897A
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659831052;
	h=To:Subject:From:Message-Id:Date;
	bh=Aa0fDM1lQReLAyV9j3vqAsrBNUHoCs7CNWyCjKpoSUI=;
	b=b7yGGBccxwdE0+sJdWYKfK8TBNOrPRNpbpRssp7/ZutBAcoYYeO9xmlXQ9VXNBIH
	kBp8ja+7MsaM+tsD141W/G7VVgUa8togGacc9xk4nbjQ1wj+IP1AA4dJGMSEHh2z3Jt
	ley/xYCkF3cyBeSHJUhytRbmwz00nvyYIvyb+914=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659831052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Aa0fDM1lQReLAyV9j3vqAsrBNUHoCs7CNWyCjKpoSUI=;
	b=JIlpYZw+gxWIIeAPtK4Qmg02QMpUDtDLT59LKQIMXyFtitE10KgPYf9ww8w+3JjD
	lEiudB5xEoGxVMFZWD9icYJNUvRwlS2UGs+G5Z31Ku+ePJ0WYgsuB+TAAgqtWv2m2wz
	D8vfLNQYnJlVIn9yT0XtQv6LPskVxccRwIRteu3Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018275a3e914-10015325-068f-434e-8961-a5051f06408a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 442cdce08bad59876262f69ba041e611a871d0bb191181e632ff7712b63ce173
Date: Sun, 7 Aug 2022 00:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659831052
