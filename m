Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8C43D97
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 22:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655246699;
	h=To:Subject:From:Message-Id:Date;
	bh=p6yFbxSSElha89odaQ9jN2/iHK+0ezLTXlJhFxmQcMw=;
	b=d7Sh9mAMpc50yx9tIGStRwzUEeJA5cGgGQpQt6yiGDci6++6oLlOgXiZPiO3XL4w
	nU7yhRgCvZkWad1iDVCCemmkAR3RTeexmbov18dODtVp4sSdhKfO4d1c4qVWyCKIpdJ
	bTphI0fQenuwAMsejkfLzeH7qNJr3CgXKxZfhuvU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655246699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p6yFbxSSElha89odaQ9jN2/iHK+0ezLTXlJhFxmQcMw=;
	b=AxDfuAO8JP7mRMl1QrLH44cFVGheq6NR4yX+eAZfPnh2yPdXlF2aBau/s5+T0GBP
	LF4fPxiY3cYXbXstg3IGHY32f6bqFGP7zJ/Pmy8ThT9NU+PvLwumhQiaXkz4oO4DWxp
	rmn2C7ttBIxT+X4UZmoFLmKBzRnNdPceW6LAF3GE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018164643adb-ed856853-fd80-4a40-ac26-15dff69adb17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b866baa52215e983eb6dc97c3af491be850ed7d5691aec226cfef7a496629413
Date: Tue, 14 Jun 2022 22:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655246699
