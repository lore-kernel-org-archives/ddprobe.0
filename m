Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E208715A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 14:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648389778;
	h=To:Subject:From:Message-Id:Date;
	bh=nHAHuXkViWG1Ibdfcby5ypf8GuS3dQDwoZg/UU43tfM=;
	b=F6XmnxGKVvYyr18jIcE6UDNmgM2W4znbHj80o80KygQ5YGGfGeFMKXkesLtn5nJs
	6q3zvE1J5DOLGAyW/cOJ5ZCbNmBAKahCb4oewbDng+rDNPUk5Vu0z0RA7YbuYZUCVzB
	JDT1uIPUMruEclmWal+IKMPTpDVhKiNzH6PLfl5c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648389778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nHAHuXkViWG1Ibdfcby5ypf8GuS3dQDwoZg/UU43tfM=;
	b=LPg0KS2C0qUJhYV1zDryGzvc8SbzA/CCrPppWOq77ktc0R3EpxYdt3nBHpxzTGbU
	G7e2wW7M3VxNEtz1xXT/+uBXE1K0l99kKyMYuoFqx4cW4skK91CfA0i7uLi13AcSYaz
	zTlSvdb9BWdl3+6L7ypcXzfny1RlI5ND1+/RD5H4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcbafeb75-5d50d2f6-76e1-4356-b1c4-6f1fb5e8cd6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b609979a57c8fec01ded4a4549d465ac2668976ab427ef2534bc1ee3b4c0a8fe
Date: Sun, 27 Mar 2022 14:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648389778
