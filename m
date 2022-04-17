Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2677A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 08:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650185698;
	h=To:Subject:From:Message-Id:Date;
	bh=eo9Hj4U6nLBIrL1gvTJOcbTx8X2GsgAP0KtD77DTFRo=;
	b=M/Fgq2F4BoYvIUiIEsXr5gBnn1zH57yjsiQRa0kmzXNk5Fxyr8tF0lhkqQS/vP0+
	dT85jBwxCORv+wbm/dIHPdu74c6UblUyWIoZnU+ROIfnrycCTQXGdRLX5xnPS85L81I
	YMCNSVjc51/8+w4E84t0Wpv5qPJin2+DFC+wU5dA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650185698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eo9Hj4U6nLBIrL1gvTJOcbTx8X2GsgAP0KtD77DTFRo=;
	b=BoLfBYNbG52H4vfeWy3o7CnrHlHoDaVem+SVAQgVd8RQ+aMU5DmDX/5jlLB/issf
	lLebTqymZlfLzKfbfdp+30S3ZmQtpO3PXeSIqA4KkZ1J+thojGQbMWBzq3yNlSdvdl4
	zOyvUX3Q8J9daXRiBZdLNYKvSMfGRlpRFxRn1HNc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018036bb7bb7-8cc97031-9a47-4001-a87f-44c616e074a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be78b725e3933bf7c87efd5f0604d3badc431be3a42f8d72a10c75c9f1e1c703
Date: Sun, 17 Apr 2022 08:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650185698
