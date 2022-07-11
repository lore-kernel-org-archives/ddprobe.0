Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36523C1D
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 11:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657540012;
	h=To:Subject:From:Message-Id:Date;
	bh=GAkornY1z50YAs4Bm7UBQqaXSPKZPwtyUPs9fluQwG8=;
	b=P+N54HpqgTQHy2XSKRmhvYI38C9xmtyUkl5lvtwV7y93GD19sDmlUBFs04+qLyVP
	8UXRC3tWnKOv8TAFe7j1q5Vb2X1uJgF4SPuqvtcEVrHOQv8lUttoW14E/991bZ+M09k
	F1ermFdXiBp/d0WaLW0ue5r38Sod4ExFuQdyY26k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657540012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GAkornY1z50YAs4Bm7UBQqaXSPKZPwtyUPs9fluQwG8=;
	b=Yev9mxkKxyditMMZM8SHgzOG4/101QAuezKFwEiRckdDAOFOrxcTMZ/1UIfxWiNT
	NlPOB+jp4ch49BR+bRud607FlABTAK2E8UHZyo+HVVzaDGjMKkUK7saS6yx1csg5Nwj
	Z9UBKWq2D7xsQUHRfnsNrkF/6biOVin5XjVVbC1M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ed15692d-a205379f-4f22-45e0-aee8-f631a0ccf5ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 005c962891d39b13efd968a5100d855914ba6ed9d3f1dede8255207104bff878
Date: Mon, 11 Jul 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657540012
