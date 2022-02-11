Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EF07F
	for <ddprobe@lists.linux.dev>; Fri, 11 Feb 2022 23:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644620427;
	h=To:Subject:From:Message-Id:Date;
	bh=49zFOEW22Gfjbvx6vU4vZ1RrgiVVasS8ZjvR+gyci1w=;
	b=dnN0gN9R/qxxr0BFRRx1ElJ1WJYaevvWbAuoe7sGfPe7Ns1cU7iLz1Uid6Xnjw25
	ZrHtSpowd/AnerYgSZXlFXMBul0voZKGKBIFNjMsw34gO4rdv+Qg2nT1qSLxCBa85Kz
	tiCRWxTTWSKd1TPkFQ8tLb3a/xW1/nZH4tcFTQ7Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644620427;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=49zFOEW22Gfjbvx6vU4vZ1RrgiVVasS8ZjvR+gyci1w=;
	b=fzyB5EXDsqX/NDUgHSYMQy/MxuZ6oxte3d1MDL/s495WH9XrJs/D+6EzZbDddapx
	ndYRiCwhcDFNMG6ABB1inKQifTTg/nAv0zXGVPOvhdFJ6Ch3Y7DwRId+lf3KILn+YGF
	zT3QNxtalWk6Yy+44CDYWh1gop57XAdXf1GzvHes=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeb042fbe-d93585a5-47b6-4217-a082-6c1a8055ccfd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9691122bbeb5325102614fedb2afc8a1430f6bd3f450af06176133364767f5d
Date: Fri, 11 Feb 2022 23:00:27 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644620426
