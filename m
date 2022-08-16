Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A1C110C
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660656052;
	h=To:Subject:From:Message-Id:Date;
	bh=hDUag33HfXtC9aPoMazvoQRvdINjh6IvTcRxOJGQ60k=;
	b=h0CCPM5wpqrksXDuohAzOsy3S0cm8OIBf8ZtFgLF/arU7PCG7LcL4WQuKLHFsPbk
	cQRCb1jvebIKwCvxZwqWtqm6LmoJG3AOGlCfVq1DYw5t1eZjNwFxUp+yX2rToDMzBFL
	boXMzu1GEsp0SlKsKeezV0Oa1Uiz6CmC+GEB8ljI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660656052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hDUag33HfXtC9aPoMazvoQRvdINjh6IvTcRxOJGQ60k=;
	b=k/sY7//MIwBca9i+WHGvhc5EZTH2ds/N5n96i50iHOmNbejasIQj8y1W0WROxv0X
	2/7R80I7/cbG5Ljpa3cEqV9XztPz8i5u1FjoRSot7dzkYbSjSRFp4M+Jk0ZaqAhc0WF
	heWKdsBR6268An7lFPsGF1zLzZVtla0QFoxOqOHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a6d069cb-50ee1d29-1a9a-40f5-8a82-87b6090e89a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1180ab98a08ab9238d763c492f69f74d25baa270291979513beae45f45e95bc3
Date: Tue, 16 Aug 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660656052
