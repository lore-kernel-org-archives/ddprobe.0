Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BB86004
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 18:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657823212;
	h=To:Subject:From:Message-Id:Date;
	bh=JEtwwt1RLYnGneVAY9Zay8NIlxPWfmFm0zTTD2n5mfI=;
	b=Ut8H95vZr2j/dF5YiaF5sSoUfux73+UGxjpJs13KGwSTmptEPLyHs2RYP4FBDsAr
	9rG0aT9a6zRVHcJExrcBkEKBRBPYIFWsZd80m+IK5nU38uSTr7joO27V9FluEZkm56R
	7jRuo92s05S2bejXdTVTXCOkEiOU0SDx0SrztytQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657823212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JEtwwt1RLYnGneVAY9Zay8NIlxPWfmFm0zTTD2n5mfI=;
	b=d5OqcZ+ZX2vXq6t0Nu17LE8nkSxiMB7UnZyRs/Bal1Y2VqZEF94PorFmQcnkGhTf
	jGlRX9y3+bhTbF6xgUmGFeeiIy/mESkdpRA/4ctd9pC/628XlnuxYzrWCVaM1G+TOKd
	y0Qq3i/ibDSq1dDRoQipiTBvocES92eKa47egfvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fdf6b35d-4f9ec407-d445-4fd1-882c-37e59b210185-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c4f5dc2b99348e3dbfaa154566299bc290d4f1867d147d85fd5772c52d4a8e3
Date: Thu, 14 Jul 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657823212
