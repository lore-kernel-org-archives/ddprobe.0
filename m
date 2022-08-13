Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3A48622
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660357253;
	h=To:Subject:From:Message-Id:Date;
	bh=DGEpDfBxZ5cbDD4srIyZ7bmOF8xk5leeaIRgXCB64fs=;
	b=DJEhN3SI3xiIP+EyCZ9UI7AvIax7hWzLS51UgNrS1UuB/Kra377e3Zi35YWscOMc
	QUbBIMDe6Fl8BbJl3Gkj6FstWznvRujLXLTCJkqCUfrE90eZMroHYvCHpHimWwZlttR
	MoU+jswDXj2AM7PXbCEki8pahw+RV4+eLyxtTN4U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660357253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DGEpDfBxZ5cbDD4srIyZ7bmOF8xk5leeaIRgXCB64fs=;
	b=Qql2c7p5vlUp1BAp6G/c4YvegfIDi/K1ZqP9JyeCg9yRb0VpHp8o8ObFjpmFmVMG
	Ms13dkw6+G/5VvhOce5oEnTvd1/eRfLffFoZoZAimuqnN24eWVkbPr7xKmA1HPnyLNv
	PwcK+MMcnLvC9RKvL8IWl/tz84hhtxuNHfOaFG8M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182950115eb-3cf6d3de-04e9-4316-a513-72c8d857f53a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3604b8c35f6094c229b2c85e1e99130acd71b5997cc6d6f766b12983a7c23f9
Date: Sat, 13 Aug 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660357252
