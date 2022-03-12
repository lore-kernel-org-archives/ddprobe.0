Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3661614F
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 21:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647120385;
	h=To:Subject:From:Message-Id:Date;
	bh=kq1iRDLhSX5rjz+Avqvs5nySfactgubvXZmroKmsijU=;
	b=VrgM/B7IzirRbUWtwkPf/oRbWL4Cuf7Cl5VBGtQPKccIDRTy2gNexf8dhszBDCvR
	KlU6I4Kq4XDtzivqTfK9XuNgOdUOwBQfStxu/G/qsRqAv8pbngV3nd6ZjHDr8IDMgLz
	/8DoCFzk0bFMkQi7yLj/l7mjV+E+lLm400DU3FWY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647120385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kq1iRDLhSX5rjz+Avqvs5nySfactgubvXZmroKmsijU=;
	b=BNU2BPw6k4XsgDMFoM6K0jS6syjUP+FkK7qWKdXwPp0ZK/n584Y6sbd5VAiT491O
	AY4rv2jlI7IGRFxtyZsb2fn1Vt1pLw2o/Kbg5MI1w3rqa3e1jwrH4WC4u0vUNssC6fp
	gpx1shNpDJe0UlS7kblbaf8t+av8rRiSzQr0IL64=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f800682f6-a01b7a28-d77c-4df1-8cea-3c344cec56bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ee8a0f339d9f2838c657008d145dd925ca55d915bb88915e5f8f0ef860d3f05
Date: Sat, 12 Mar 2022 21:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647120384
