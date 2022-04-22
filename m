Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13342290F
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 18:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650651838;
	h=To:Subject:From:Message-Id:Date;
	bh=P6WbgodbA7ss/Xwoq7P8shNK8e52uCHi5j3E66JCOGM=;
	b=RGOiYjJUHtjTMmLvJbrzRdKsrW337TBF1PRE2JhAhcONKRbBeG2QJKZQ1oMbPQLZ
	Kj0rRZnNN2nD5hcBQhT4MwmpeLkzJ2iSYO2PO9aYXXk+VLdy4ccnEPqnsOLJLBTq/BL
	lZChzOmIzEtqK1lc7ZmkN19EDfFDzUjSnGLxSXbo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650651838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P6WbgodbA7ss/Xwoq7P8shNK8e52uCHi5j3E66JCOGM=;
	b=K20QcSCYeJEPTpyAtIdL6DvE/l1+jiQlTNbdh9jed4q1fZ8AbFtHqFVoq9T5VaQa
	qcCAW0er+xKSbfQg5mL/934k8AXzz+Hfrm5AELeBQzr09zzu+Vx9Mk18OM/JTYUSOmC
	KtvJkfsAtwzFru4pmkoD9+x+Tu4bj21f+/xrA0Mc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018052843751-63e73e9b-f6cd-44ea-b4f0-bfcb91c3cd03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81ff608509bc7111dcdc99fd8b6171184531b41507f58d79086cee9edcdbc45a
Date: Fri, 22 Apr 2022 18:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650651838
