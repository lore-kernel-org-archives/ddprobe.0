Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFEBA800
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 02:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653446999;
	h=To:Subject:From:Message-Id:Date;
	bh=KCXsw8sF9csTRKse4yaOYWvNcjzt9Hb4DDZWeeqfUaE=;
	b=CBv34ILUHdkfhT8xmaLzundzdBHDt0BmykI5VgC5hcXSpXh6Bm2TUO2j1KuGnoUo
	FRSgRkf23SQYLxVegbqFZcqFHRiXKefx33IrZveFGTc/J46PJmEqYh2YHw/0B5jmC8n
	G3MHi5n9J72xpata2uXpndfl5mffkxpomOtYsBN8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653446999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KCXsw8sF9csTRKse4yaOYWvNcjzt9Hb4DDZWeeqfUaE=;
	b=ZXnkPMLeRrMiseu+RxmzCwOrS/8r6y3fEWAybBdTX0ilXRQl/fuSl6MqV7e171cE
	+Cg+L/DB7OXR9qsS3+e3jznQolfQdbYNlx0GIjbO5bu2z61vA18d2wIP1l8p89YnaPt
	+A5E+SG41akF/J2bSU4ByTpwGlCCzD8qZ7K49fu0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f91efcb7-ac955a11-fcf0-4aca-9323-333b7ded3a6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dff1676357772702d0ed70a29e1f1f079298d0e1a6c517426f1e2e33701988f0
Date: Wed, 25 May 2022 02:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653446999
