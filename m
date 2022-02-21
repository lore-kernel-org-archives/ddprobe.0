Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B317A7E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645455685;
	h=To:Subject:From:Message-Id:Date;
	bh=OR/p+HKS8fLnQO1qEuW30ee7X4OwXtRSQC2bjV4zcRk=;
	b=aHlGOaWJAKpfzkFKbs4+jncOLxHfak3ElZULUAwAtQbQJ2uIVZwTl+SOKw6nhbzb
	fEwWqcsChFuMkKrl/xJpztSxFtb4eXfVPSqe+OGJZTccT+SrjRLTbk9pF5SjttuJn5A
	qmFY+IMR3XL6RnBN14EJvEZdcexnAUuX5XV4hR6Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645455685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OR/p+HKS8fLnQO1qEuW30ee7X4OwXtRSQC2bjV4zcRk=;
	b=V3UpuW4UgRarEClisUGxRo1zt2icqEArDD7li2OVMlX+4QIdAUUIwdhdyGjBH29v
	eyxGYgbmyNNcPZIeUWzN1zgh4RgySmPCdu/FoSINQ4Y+YAX+tuCjp+wdjxoMB+IfId6
	QRTe7E0Kiqq0MSckfpFVrFlFp1KAYX9+5Ocp9d9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1ccd34e8-a65f8474-c95c-471f-b987-01ca5e927c97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 391d0d3cc067cef3c7c8b18b1ecf90bcccc428a00cee109cbf04152ea025e9d3
Date: Mon, 21 Feb 2022 15:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645455684
