Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607621B76
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646494284;
	h=To:Subject:From:Message-Id:Date;
	bh=yGkDgiEEWf8WQPyxQ8Y7AU1Z2Mgz7SmpVz8FKENM2Ek=;
	b=YELb0WG+MIJWVKaU/UWAvH6KKAG6Hcitghdj22RBfKXVgD79x4LraU9fKsFrs+1F
	oufFOsrGr2ksZREgFbZcDLEmPiSkqOrRnC+6z7LHRu4oxH+hvLVIxOdsrBoT0LLN/Aa
	y6i/5BxTD+X6hXvW8FMHZBT0nIeO4rjEG6iI2VxM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646494284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yGkDgiEEWf8WQPyxQ8Y7AU1Z2Mgz7SmpVz8FKENM2Ek=;
	b=MscuvcHn0kINxSJ6k1Ulvek69nkbPW1r9UUZBA8MdfzvBBOPR0pZ2xJ/sJ9gDNwJ
	ZWmsvmKiVI8XSoKK/dZAw9NtnebadesnETCyEi9OuOEy85AQkQlnJK7DKoI22ZeRx6L
	fsMo9a53FQSW/3usofOcZlFwYOZxHThmrylfNbfw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5ab4fbbc-aacc06b5-8813-4ec8-aa48-301c373ead48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c96732955738f039eac02c98c3389a629573e193a9b984949bfb61c75e0b7860
Date: Sat, 5 Mar 2022 15:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646494284
