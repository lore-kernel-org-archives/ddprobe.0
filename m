Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A73429A3
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 19:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656185212;
	h=To:Subject:From:Message-Id:Date;
	bh=hZo1UhcmwLujEXUyXDhdl2yc1D8V65FezxIeMuB4cU4=;
	b=YEKIsiqWfUMAh8vtJTE22fAMyO7M0w97GadCdL8dmOjYDDyLOwvMLz2Uh/T1ZBQy
	lqKdSou86MgQLb4qIBO2DrIfqnCQMvzN6GnSyEbIxgR+RMC/4qUI+2cyzS9UDKZ0+fV
	yb8R2XzskO4IbXzzUFo+9d/CYrqda42MhDEvg+0I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656185212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hZo1UhcmwLujEXUyXDhdl2yc1D8V65FezxIeMuB4cU4=;
	b=J3dB0QjgyVkqGV99kOoQMN0vIAZlfa66IhmY/dXeFh2NE/RlhRm8NQseJyXChtrB
	J1NnSifrsNIw9EbUrmgC7lX8nky3+HuUiLNg0V75KkRbj+5221wzjoofN54NdtWWalP
	wMH6VZEFmmchvEZxU0p2OKcqnTop+alewbQx6TzM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819c54cd6c-8a7f1296-de60-4c4f-9516-db057779ca6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5660448ff0b65ffaca5945f3482534658f641c55bed3c0e3f3749899cc560ddb
Date: Sat, 25 Jun 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656185212
