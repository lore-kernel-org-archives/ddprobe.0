Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84060A31
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 09:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647940585;
	h=To:Subject:From:Message-Id:Date;
	bh=CXAew8ZKTayDumd0ktKauZSgcEDvwDt1FcMvZGFkJ7E=;
	b=aNrHrpTh/6BxpbbNGmdwHSFHzEnIjG5XNGfeqWDYf+YgkLMOoaCEcemmtZ3frXeH
	CTRT3GpZIqKd73FURfmbrhI2tO4ok8Nq4GZFKTh0Jq7C/In3J9TyLcuCUY4/wqtCw8c
	6O8z/TVmvoGyErXnpsfoqxKYvIE61nHXV6PCpTCU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647940585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CXAew8ZKTayDumd0ktKauZSgcEDvwDt1FcMvZGFkJ7E=;
	b=EPszodor2pud4JWsfBrV9BXQAVxBngKWyRQmufgZH4PQBSRMfL/8nnP5DRioK4mv
	xwbu2ktxfbRa4S0ggTHeQgTo49jlczaWqodWOsuUWFiluiQqLOOEwn85C/TZAB1RX/0
	OQb/oc8l+Ir2BEox7bpUT7wD3H/UhXZiKpGHPoKI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb0e9c53c-623fd87b-8ab9-4c02-86e0-69535bf17300-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab72d44c5557f8faa97fdaa5e99b4235d1261c1bff08390763937434343b238b
Date: Tue, 22 Mar 2022 09:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647940584
