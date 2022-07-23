Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD647E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 01:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658538412;
	h=To:Subject:From:Message-Id:Date;
	bh=nLmoZ6ju5sAry3Y/bf9fiI9VXM8RBYFxyIDxgRSc3Vw=;
	b=PZ5z7s3VY8ACjDDUf1JRxJsxQGCHeFJf3qlphsZ3/jIe2Km2q0gJcFktInd4uiD6
	nDmpS72CZKD5L9/LFBs/Ky4U/UBon+Mxg5WA2TyujYDFLGdob4Ioz+X/XpsVSke1TlQ
	k1QvuA76M6qbPU1U4ZutujMzMBiqtmZGC4+0h2D0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658538412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nLmoZ6ju5sAry3Y/bf9fiI9VXM8RBYFxyIDxgRSc3Vw=;
	b=SLJP6Z09aPNeOHeqYGWRq5uYyZN5EJu1+xR/6O4KsvGqND+8wBDCI3BHHSoOdVjB
	eyJVl1OWlCzdcFHYTYgqpCtu6QiLVuDSRCq5UkI0A/oB/m+FrHl/vj9Zjiu1bc2e7VU
	LsbAZFF5PXMYC1QT26y9mwURwnJZU0L0ANncIOzE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822897c902-299c62c6-5d61-40cc-a819-eea6deac17b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dca67239fbb96f900b3a5391960e599ef80054490511c44dff11d12d2c390a20
Date: Sat, 23 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658538412
