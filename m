Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE157E5
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 13:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655730479;
	h=To:Subject:From:Message-Id:Date;
	bh=lsO6WJ/O5dEQGu+IrfVv0wlA1zjJ5un8765ocklikFM=;
	b=lkY8IKhn+BxBUi3/Dkel2loBV5cw66roaBY0MUnzGTl4nLrvNy5TknvwbFogPeCT
	B8DUThCwTF92Mlgq/kf9SciqYQzGvDF3fkjjuB53YO//9iGdxWlTS1iscyTK2j0HFRP
	gzUXoToXAcpO0nonnakLoRybHf20QkMSrzLrWNzU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655730479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lsO6WJ/O5dEQGu+IrfVv0wlA1zjJ5un8765ocklikFM=;
	b=HUCJ8YgHv3CJuBjSQuXfHWXtNLpKihq0XWnjQ3xHtDKlJG28bmw3/Z0umovCT0Du
	gq7SGewFIdxSBOXPu7AjTvBe/qIJSNblFz+JMCzeu5gOApMqSy5SiuyCmTVDXGkB8HP
	1x11PeMtM3CK8dAr/DGeYPogt5q0ok1DBycdbNHw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181813a20b0-fbd0803e-c465-401a-b037-f7437a2753d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5f17b775a9299f9ba57a31521fc3b434e22310c93da86c641b488025d308ee0
Date: Mon, 20 Jun 2022 13:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655730479
