Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E3915A3
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 05:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649136778;
	h=To:Subject:From:Message-Id:Date;
	bh=Wiu7d8KRua1Fqr7VzaKt+JQtDU3gWEIGQVvT25XhCNc=;
	b=RplDta7fru237x/pjg84FRs6cF8XCUphkaHEntNPrOyNLvEw5hqhTH0GIFGYuNdh
	qJshbGT8QYzmoqYflHxQtxkJYNxYLskDvKnuHBPWS9XRNKpY4BK+8L7kiQyuOBoi4wB
	0T4fnR5wF9iAQIGQxX/74PaZ4kyJ507c2mbXkcPU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649136778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wiu7d8KRua1Fqr7VzaKt+JQtDU3gWEIGQVvT25XhCNc=;
	b=T3JjrtYoENedvB/Z9yLxP6JuH0ENdemRZOyDpGg6Wp3Fs5ay+/lr+UcBMEMNDLYF
	B6Vd3XYKMrG43By1mJX5/F9c23oKT59SAWbTvmpbPQEZNjRfDZA5VAV1v7ckfRG1y/P
	bjEDm4t/kPh70QV9jhdprfgBiBpJ2r1MVD2Nhx9k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff8363c12-2f3a384b-679f-40e8-b6e2-24e888e15ae9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ad7d7a69ea2c789e6204cc6aba5e9773747ccb345527f169fac8a30f9e61de8
Date: Tue, 5 Apr 2022 05:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649136778
