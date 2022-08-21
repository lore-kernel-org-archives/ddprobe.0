Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C0836A
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661044852;
	h=To:Subject:From:Message-Id:Date;
	bh=1ViD/WpDhS8eSuev5Psw06f3JA8UqjSYp8AbvCUUGCY=;
	b=gQC0Z2Tn2KHo/dd4g0OdDhrjPWKvZ9hPKnCbRi7kSFGfFWdF4VXIDHVQAq8bYlE2
	NxIxnl8AQVwdd4Kf5PdfoU5091eLh4khyxEkNcQnRn376CLzQFMWh3hCqCbHN2stfKq
	H3r5Si/l7uIT1XfVlops00L0qoxFCQMBBlYex6q8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661044852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1ViD/WpDhS8eSuev5Psw06f3JA8UqjSYp8AbvCUUGCY=;
	b=igPg5ZRPcz5MDLxjJAmIDvn+w4DiF4g/33S/xY2JnpDxT0MNOGYWnaqIxgD0shaY
	3Bhs/535Ttg71GrFRXm/W8eDBphzPMTnsz/iUlXJfajAWmlkglaNGNJK9L9fhNrxIZO
	L3kgbCKTaG+mONiFT0M0IIZxrb/ESEs8aAM5a/Kw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bdfd0777-e31d357d-036a-40c9-921f-97632f668f9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 260d54367c91e26c3207d747958977cbfc3a35a2ceda5064433ef07b1bbe8a38
Date: Sun, 21 Aug 2022 01:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661044852
