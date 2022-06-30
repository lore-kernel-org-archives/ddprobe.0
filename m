Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4859BA2D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 03:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656559612;
	h=To:Subject:From:Message-Id:Date;
	bh=cRNU2bVlLMrjPsWPrwaUcTT4b0mZ0tSzJ7fNj3/uKrM=;
	b=jJVndKfMS5D9ISCZACn14cNQzFyGkAp+C4qnMKWblbc4e8lZTNS537nwCHMa2QYQ
	zTyHEmMSpKG34KUInTaTge53v1DmbZm2DsLSm82XACinMm8FRHrLSJ68PZdCIO9vqRY
	RgZHYhUkWpqn76Gey+j31MFlgaGv11aGbMAU47uA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656559612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cRNU2bVlLMrjPsWPrwaUcTT4b0mZ0tSzJ7fNj3/uKrM=;
	b=Fo3sSgq0KxQd+lWK6NNhjr1hstijEW6p7kBT+nXL+S9hDWz5AU53LPO2fQtBDqOD
	D1HenlUKvceii3DgWtSU+DazsEsjv2QQ0VBoy7j+cYPk67mJtyeXK81Pi0Eja0CtgxE
	FSxJnNwMo9YXNbQF6MMGLbbg7AC/oKsxfZ+RVECs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b2a5b1d0-4196fccb-1d3f-4cd2-809e-53b37d59913c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2e6895784da142a605c2be11066aeb7baaea730c7096d59d42847100de0e0b5
Date: Thu, 30 Jun 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656559612
