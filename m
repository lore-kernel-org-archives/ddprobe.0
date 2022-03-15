Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595F57A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 19:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647371784;
	h=To:Subject:From:Message-Id:Date;
	bh=0m6ar8bunQ25wuwSnO/OaM5+Q7vOVShdUM7pplp04DM=;
	b=jPbZAz4Tlr4TXul2RujGZteHeSq3DMR3S/4dAttvWBdqYeA4FH+mq0BIAsB8GrvT
	Hwt7mlsPskGTBdoT5rYgEGRwl37vJ+ytd78+lt2dgZiId/DxpqGkUg9eyCBqJekLgxa
	voshzxiEemNEiH2wcsDZXORPMwuwGZIV/J0fG0JY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647371784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0m6ar8bunQ25wuwSnO/OaM5+Q7vOVShdUM7pplp04DM=;
	b=N8hGnvw3tkrKdl9tZZi/yYMIBMSx0Tf1EC+xK0VExWOB4PQNmtFaIHGtFk9r80oJ
	XUFIOxGbrp4gO50ZikKGYBVtYZ5eT29lNbBLVjD5Av3+zBqoziyTkP7TZhWrjOmSZ4m
	ttMMKK+SFVFaX9W+fvODLlksp44Bh6ZQzfUB0W8I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8f029257-235bdb83-ec9f-46ca-a1b3-a6abf9a6e72b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fcdcae68c6d3d3d82b3ac0109072406e4e9eaec20b3ddac6f0be72b7aaaaad1
Date: Tue, 15 Mar 2022 19:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647371784
