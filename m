Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F2C15A4
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 01:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650676858;
	h=To:Subject:From:Message-Id:Date;
	bh=rx7whDW/6XE0SXH+OKW1FEJeNSiIt1dj0K4IdGMDOjA=;
	b=W921ca9F6Yc09X1I4FpsDGfBAP2yMxgKnylCQEcrOAj3rAIQ6S7vvDe3LN4i1APk
	RDS3pDg5fAkeN9uf67w9bgNwajoDy07ijbv0vySZqm0PK2wxZ28BaxTiO4of5RptXp/
	LiSA2BusmNRRwH63JU0PaCNE2dV5i4c8AHMU3+U8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650676858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rx7whDW/6XE0SXH+OKW1FEJeNSiIt1dj0K4IdGMDOjA=;
	b=WWrUdVvEm2ppjbyY92OmvXWqL16IozljX3isTGW47fuEF8vGkR2YuZIP8g7QFg+H
	nadUFz18c6ckL1XxCpTCrp2NN3ATInISb4J4oKOJWNqTAWMTernXTtkW1YkZl/NreO4
	gney5vJiZprM0N/4WqOk4GtlpMwqB+DgTWa6ZRqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805401fdaf-e1096ba9-632c-4fda-8426-ce08cf39a166-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8bfb29150c46c803dd0dc6fb366b6321e8fdbdd2270c0bbfc07eb3ba64e23d3
Date: Sat, 23 Apr 2022 01:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650676858
