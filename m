Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C271113
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 07:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653551279;
	h=To:Subject:From:Message-Id:Date;
	bh=7smnsplQDs4BoKzaR+7ZfDb3/0eB3aTRxCDxXQC0Mdw=;
	b=AufLoNulMdzS0Pqy5fq7utkkNF/8s8/gKrwd29q0/kcl7dhbAhFVuuzvm9DZb+0l
	opmy+F7JU9GhgT1fyR8zrbETvNw4ptUBVby1bOyD6vu3SyD0MqZfi4IbVYMd5iFiKIU
	itui3oy/PhCaWBEgIyOmQymnx1hHXk9aqN6+T20I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653551279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7smnsplQDs4BoKzaR+7ZfDb3/0eB3aTRxCDxXQC0Mdw=;
	b=WQo+3olLmMVcwmC1sYBMbKlMjN65xT/2C0354oCQvfwaOxUNiiwRcohH32jvQMPZ
	LI5qbGlJMBaP45lnpzoLgnA1idyoDSphyBLgnCQPI/cQXmTvztQmgON7E0ZU80hBZEK
	dgLwRsecn80a18f04kgm9yoShU0lZkw+m2x8w+6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ff562cbb-c5df335f-d76f-4e44-a616-5a21dd6f46f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9aca73413447e2808914d642625c07e0851212403092653867b2a5ea34a08cd
Date: Thu, 26 May 2022 07:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653551279
