Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B90E7E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 01:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658627212;
	h=To:Subject:From:Message-Id:Date;
	bh=VGKr0Dou5d8OYg3E/qes9BiEq1S0MPvI/l05s2QJ7N0=;
	b=X2BExNwuEjR/66iRMdIw+iu9jppSKKE3HB1XCmU0EXOdJQXgzCFWXKYZaYt08L0K
	kxg8+TcnUuKxvOKSZX13Za0HleWHQ7uYhxCMusHJynQOSutIzIt5PxC4SLZaJC53YCF
	pgg8kNXqIR0PIf1KC5kJN1lWw3ycstwygJN0uNtc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658627212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VGKr0Dou5d8OYg3E/qes9BiEq1S0MPvI/l05s2QJ7N0=;
	b=JwYBTxk80C9t4lQl39GYM7vMM3SlsI9TunJoMWTl0PX7sOXbnRXSWkSDLbs0XzhJ
	Iuv0Nfl41kkIzJyOnHtlGTOTzowPDoOvIfPYHjdt5zmJWSaR60PS/i7GSNG3tRm27Vz
	z7pc/oh4vj+Nzpfz42ial+L8ykbCNR4Rfo3rvm4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822de2c414-f919e179-bd85-408b-ba18-7767e9fdc288-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da2e51a016a9df442dac6751de73461224ff5f2dbd0f02c8fe3b6a287bd4d1e9
Date: Sun, 24 Jul 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658627212
