Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2282F21
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 22:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655247299;
	h=To:Subject:From:Message-Id:Date;
	bh=fuXP28OQzJr77f6PtzIVV8XlbocoK6qhRKegO6eUksI=;
	b=bR7yMS8Kt6RY/xsWd8Lh69V7u3YJ9oNEMRD3cTavyAifhPIycZtpuVsZhgnK9SD3
	csvg/sk3jfeu+lCxM2SstqaKyMDYVFHTwM1j4DAXKBgw3M1JRV9R949h6HkWgaUxFyg
	UBhafHVjXF1wI4sZSh6/2rrZNNuPMm7VUs/ZCPS0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655247299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fuXP28OQzJr77f6PtzIVV8XlbocoK6qhRKegO6eUksI=;
	b=hkqjKD2BzcxaHSSoJpNlPt0lfQSlc514odEU59wqjnC54ZR/pi+4hl2bsvIYmP3x
	W4MbLGQvwSG15teW4GmMtTMocJ0cgQGGTL8ngki1ASgsRuifgdM3wOXtupfKMH4eVD6
	8vxMv5ITyJa25yiVuCl5Sh3cKDn4jYwO+ePU2IFU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181646d6292-67f5de26-f59d-4049-afc1-0d5099a0d148-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 096a1ba8a263da388a5bf8e11690e5604bea7e03693daafae2464fa700a7f3ec
Date: Tue, 14 Jun 2022 22:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655247299
