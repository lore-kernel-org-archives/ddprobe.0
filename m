Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448267B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 07:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651219018;
	h=To:Subject:From:Message-Id:Date;
	bh=jkFXqhszLicKMy7ozg93eQyrk5L0X3g2V3+CMFlLwyU=;
	b=eCkX8zAssK0bxJiHnSjE0Fhufb6etPK+RmEi9z3s/yivHOWL6DyALlu/MHLnDXBQ
	6jZgV7qW2stiZ4UALbd8mlrgPfGFZ//oC3SdgvDMOQOWjz7i6iQp4DSM9dfFk+8eRFC
	/WnzejM2VzZfRUTi2k3bxuPcOLEVkWsm61A8Zj+Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651219018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jkFXqhszLicKMy7ozg93eQyrk5L0X3g2V3+CMFlLwyU=;
	b=eRFRlq1UBw+/DvghlNUhzRQSMwrOmjUirF63h5vMzYg0oJW7Hnw3gWji4ZcJ2nju
	x2L+MqMM4AMzSNRbj3VrmxvJONMmsDr3lXvgAx1x6VhYhvAepyoK/NFTEMHTdBZkseE
	ni1QWxWtY6T1yvZa+GTOydmOMQM+GoCxOEhig44s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807452b231-2e27c98d-3829-4060-97da-3b5c333b673f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52b5eb77ef1b22f0e588bc4ab954633890e6bc3b6ae5d134cae3a6450aae4e20
Date: Fri, 29 Apr 2022 07:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651219018
