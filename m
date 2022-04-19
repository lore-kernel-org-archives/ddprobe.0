Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134CFA2A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 01:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650333478;
	h=To:Subject:From:Message-Id:Date;
	bh=fLmglBl0OSw3CqmpAd1GbblX/o2CZJWokyvd5nEVe74=;
	b=laA0K3kogEGqP7T80NhD1wJdFmqRcK6D4F7hmTaGE0E77Wp1181PzQWI0KHMKg6L
	ztoEbzcVmRHA92xpgTXPr/Zuqu7yWhEXtkmhCJ7dfkAUpRU+lidAAXSzTxtHyohPY+z
	2t3EVdiHn9vl+uXcchDky2AD8fr90clr8ZWOeuKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650333478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fLmglBl0OSw3CqmpAd1GbblX/o2CZJWokyvd5nEVe74=;
	b=hxz4Xq5BI4ZO35meCs8QeAjlYTowoEZsNDzDuP9YsU2/PF8UiPHtOFRYsSPgJlSv
	Ku+pcaZo61A92W4vJeI/bnNrVZB3JtUJvGg2Erim4O9gELnehGMPhRfqXIgFigw9wnJ
	ZSWTFpnq3/cjKLXiewU5/zeTUbaiFYFF6er7Ipkk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803f8a6dac-780187c4-3f29-4e3f-b5d3-af21550dfb8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2772acee484751725d64047c5eacc53e2dec47f0eb9d8e6c76af6f3c0e73a479
Date: Tue, 19 Apr 2022 01:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650333478
