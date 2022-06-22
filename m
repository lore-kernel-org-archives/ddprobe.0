Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE3F10E8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 09:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655888999;
	h=To:Subject:From:Message-Id:Date;
	bh=QN4WH31K/BaY+RgJ3BCH8omeFIi/55XxOLgN2+2/JTQ=;
	b=ewnC1qrQxRqMppwf55TfVeUqEPql7yzbTyF6xZ9ZF22yFTbCdIotdYB4P80Stgvf
	++6b5G3Ao8CNH3RbclRCXAtZyxfB3aqSdcERx/WFQp6ciGoQmAkLf58A7Bxn7SMW0de
	KlUW7BHQBwWQytI4uwz+IHBZIJ81xph5rsDABlec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655888999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QN4WH31K/BaY+RgJ3BCH8omeFIi/55XxOLgN2+2/JTQ=;
	b=K55DYAVMUQVTsO+uWPrSX7Dv3XhdJC63RcYWMMV44VjhfPriZN2wJNgy/jYp8cTI
	LFNVopN7V/JcAz3NdtCTlqfeWJFkZk3L4837B6wKAR9TmIJPFe+ePrVtI8yBqY61xqK
	TSHMKB9I5qBmU1w+QcDcSex8vq3h0SdH7c/7Kgi8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818aacf37a-1075dd06-de5e-4feb-9bc6-c7e4b559c151-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 046a83585f566f208db6a4a10f93a7ea0287050bb69e319e759de479db5d815d
Date: Wed, 22 Jun 2022 09:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655888999
