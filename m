Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716B917D3
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 11:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651492438;
	h=To:Subject:From:Message-Id:Date;
	bh=GMafZTSePF/idmhWD9OgP/pTnu7E6nbPwuSdmXxzTAs=;
	b=SbfJU2os0nAB9KL7EhWlZbkIRI2G9+R6LKFeDXHKe/InMC9rqFTZGoXtJAqCYmdi
	2ya5eHW2KJMLiLkj0dSw6Ax95qupaewYkWrlIcY/CIUfWTbjoZXf9cQSQmgt3QwPw30
	Q7GnJygWgwj7796y7kbRsFzF00G+Zm6UoHA/omb4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651492438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GMafZTSePF/idmhWD9OgP/pTnu7E6nbPwuSdmXxzTAs=;
	b=dbqlDsQ04i8kbghM6OsBLBPg2yTLo/+lfvftm2RK6HVt3BkyKlSQ3eUJR6XjFSrO
	0aC1FGpmPWvNZ18dBHeM5JWoEenjr+FieqbZnirPGftGZXiL1uyYRAUfuqdhEgQUu/P
	3gloliiHp4FP/LD983OC5eHyTbukfbkvc5E8wR30=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180849ec183-3547db82-2692-41ce-857e-691725d3eba5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7d900e6952c56b1afe7f952afcb0eb78fabb8e292a48f31183486291cd571ba
Date: Mon, 2 May 2022 11:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651492438
