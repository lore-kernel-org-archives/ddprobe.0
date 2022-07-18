Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291E233C0
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 16:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658161012;
	h=To:Subject:From:Message-Id:Date;
	bh=r0XyHO865Ep7V0OtV4syxplP4jC/exQ/U4Nx4eyCOFA=;
	b=ECtVnD4oePcr60wAnBdY6tQw9vQxLRM1HG8i3r/3Mj4EY08hOLjLiiKItvtVAxuc
	3ynjepcyfNdbsTxdl9ju8EutGui7kb6Tl0NL2xYfTy0zoBedgdugik1wBpsdnWfhwps
	zA0e+DXrD/mFBWvszjB6Dodj2MyppmBkpME9mWMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658161012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r0XyHO865Ep7V0OtV4syxplP4jC/exQ/U4Nx4eyCOFA=;
	b=H8buEPvplqdOU/v4Z4fLO64GrsQp46DlNP3fmDalc9wTXd31hgTT/GlUq32sZPWU
	8A5+uqoNgngqLLUyXIpumRR4vvRJ2dTxZkvdTcMVsjYn89IfpFZg+yojlA2kFi4fa2T
	Go2PHRfSNk5m+CwhdqcFxU4Y0jkCYkB5VM/ZvGTc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018212191e2e-6becbbfb-b19e-43ba-bdcc-e1069de2ecd8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4ea20a029ba0b2993c68ea451a626f2ce9125b5dc984b2c6ea27d13bbcdf26f
Date: Mon, 18 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658161012
