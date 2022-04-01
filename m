Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68208137F
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 17:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648832818;
	h=To:Subject:From:Message-Id:Date;
	bh=z0SYhdHFYrpzfWECkXPbFBbKA2IRivhULUuqTeErY9U=;
	b=ecoM+wIffweyB9uSM6KWhPXQR3t0gU1oW8MqkA5bSWof5Op0awg/evFFFWDFUE04
	qvfBvCCd3ue/vm167S0jLwrStFVIMwd9uGDVZ2+DySdnkjRPXAOJsPFRhXmohOs702C
	IfwZ3FGgl9Tt7I71sEYWx44+THmdsjaExQTJZjzI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648832818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z0SYhdHFYrpzfWECkXPbFBbKA2IRivhULUuqTeErY9U=;
	b=DagH4VTDadL6dzuXnJQ+iAXyqWMpRKOIvXQZxgPiQH8ShU9y00n+7KTlBCo24txq
	0VVEA+I7VOqGiscpqwAVOTHLgUbOoZQmEqRHnIbPujji5KdXPZBK3oFt7L/ILjMHV/6
	k4ByJ2oR8LaTO+FEbgkFAlStq6EjayggwNmCfoEA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe6182cf4-04e41f70-e74a-4b1f-b73a-8e3d215f0242-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f44cdec4c3a7c110b4db482f577373f7628481cdb88e7082e5fec58ac38a6fa0
Date: Fri, 1 Apr 2022 17:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648832818
