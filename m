Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82A2614D
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 17:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648056985;
	h=To:Subject:From:Message-Id:Date;
	bh=vNttgMqnIFCT4kxTaSMEr/bFTXu+ijlFNjbTaS5IqJ0=;
	b=YQQUI/kXJalm/5zvd5kx+IQPzrLzo0VFHo2hVZSo680sCWL+o3upae1tYCSLO9g3
	R7QAEKTejWS4nKryhxPF48fQGldcm/t0XlAcg1qwRxCiCiNEnf40X9Ajeg3xV78jJY2
	sSODDibrNUbpvlYjTg+9YuL13tztXlj6HdMe2b4c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648056985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vNttgMqnIFCT4kxTaSMEr/bFTXu+ijlFNjbTaS5IqJ0=;
	b=Zi07ANIWKrheCm5akp+hMxwlQ0T1fu30HcBwabMfDz6/tr+T7fRYqAmiE7DWz5pM
	/r/aP0ItbkNqvpztVAG/l5EPqyTSCOst1ecpdyd4my4ds3F/a+/dwjHi5p44/YC8e7/
	aOZKUKq5LvZ846WxI0o7AfTCst0Ze/448zYsqCes=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb7d9e4bc-dbe8baf5-e00a-4da5-a838-f63e66db0ab8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3b6b285d38afd40d768d6a8d36606901e5a91eb0a98f17b0c79aaa475de8233
Date: Wed, 23 Mar 2022 17:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648056984
