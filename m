Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEDF1843
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 21:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655933459;
	h=To:Subject:From:Message-Id:Date;
	bh=FdR4fqv9uc/Hk1LNl+ar12qt5HEc0rgina+QDHNMb+0=;
	b=U5v8PF9pQbLpLhy6rb8h5t4nMRg6vBKFjmZgzQGtWHGoV2xnab/8g0oUB4VUM0Uj
	YWGthbUi1BIeu9mnYi1/6A4+5PebyYGVcN6Zr3Vl0ojD187mJvCxpCTaoTRSrqrzn+q
	QWnyxphuQhKmc/IZRwOSsI8UDreH3rfQhIFb+Ddw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655933459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FdR4fqv9uc/Hk1LNl+ar12qt5HEc0rgina+QDHNMb+0=;
	b=eRspaew93MvoOd/ulE78RP+MboCscYsk5VXryk/5TNzfPMQqJR4TrR/I7f+++xWD
	C+u739HiXffCcDO9eCQnuiUX14XTT4aFouTE1cvm/CDZPnR7ZwqneBSpw/ftuyc36rL
	pQYFUUBRLYUAyFcmuq27YOayCntDFwVc/znBvC3A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818d535b66-56caadb1-322b-4975-a7ce-3d4964d06c1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 255ecaaf5431d88714c708f0402a525231a7c970d20df2208660122979e0b861
Date: Wed, 22 Jun 2022 21:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655933459
