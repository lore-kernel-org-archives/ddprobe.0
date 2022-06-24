Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFBE74A00
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 23:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656112613;
	h=To:Subject:From:Message-Id:Date;
	bh=G21EqG8rVIcCGOL/Qhy3tKe0pSzfG5EsCh1XxvhBgXs=;
	b=K3YC3hFmjgkhLr75UMBMp/8uLf95Imxy5iRp/ZTOGq8JVgkgw+XKLLzDZUGqDb/y
	rGAxyddNRjMTWydhD/uaozJ2bhM83qP+SmuJIbDjoBS9U7Gck6nub1vsXqteANH1HEU
	OGPulogFwy+NdXfSo/mViyWfUZjYuZyJLemsxcmA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656112613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G21EqG8rVIcCGOL/Qhy3tKe0pSzfG5EsCh1XxvhBgXs=;
	b=K26Vbtath2bB7EjnkJRvxxjyh/XZOn8zHe6U6erbqtaETZ5weu0cuH61wqY5ZrDj
	oaZfBd8QnIG/LzyFvFCF3c/cMhvZGaOZ9EiBBuVF/YtEYFgCV8o7X8lSQ8j4dXLS4Ih
	QOoZKmQRILcDSgVCZgF1vqmdgWrxcsWeVlyqm+JE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181980103f7-75f5bda2-01b5-4305-a534-aebc2e11cc1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 033ad808c0e9ac162f1531a36f1086d403c667d760a967510d2e6ece31710243
Date: Fri, 24 Jun 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656112612
