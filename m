Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0881875
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 18:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655923559;
	h=To:Subject:From:Message-Id:Date;
	bh=k31PxTSAhele0rtnkTZGciv4MP6X8qBVAmqgUsagIPE=;
	b=gUadszRYE9soMMdp14wtXfaFDRPaRn9a+r86pDNzINIFwuQhhSb1RChTtDryvWXp
	ct11iXDJIdevt8KFpqWb+bj9z6woZAubf7WFa+dveZKiCQG6lpZXC4ULHIWXNaewKBE
	eiejPGR02pORHc5vt59RO9x6nQSoB3Jz0C1H4aF0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655923559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k31PxTSAhele0rtnkTZGciv4MP6X8qBVAmqgUsagIPE=;
	b=ae4o3Omhh3I64kkPWx1Ut02BudSbjPMihjNB0xOsWGnIpdNqgK35Op0bTL55oKG5
	k7IfvWmej33jBps9t6lPk6UY7/56YdMrhIMC2izerpZBDv7Jhgvc4bDzM7HzIJ4Uxef
	664z+XS8d+nCnB3pBKI0s7XeFnEo68L+Je+3P3Q0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818cbc4b72-1deeaf64-6c2d-4d76-ba60-6cfd26e1fdd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54c02287551a9ad5da3182815448218957859c62559694098c6d2497e7e97679
Date: Wed, 22 Jun 2022 18:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655923559
