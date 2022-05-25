Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631FF10E0
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 15:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653491039;
	h=To:Subject:From:Message-Id:Date;
	bh=lutTIgY06gfm7uxV/MXJ00Vad6lS2YgsPXH+DaoHNKw=;
	b=kikF1Z2DSt4spm6SCRHyEXbyPO2fA9FRc8Pf7cDg5JPQZqNka5ckrq7x+iDmdlNL
	q78I3TNAxa19NBMNsjZpLJpQHyObXE2ie5NLXNXPHXUuF0W14wuOu+5Aq2t/nNRacbv
	U6a/UZjrdRl5C9UyXhkk5z2yLxGtzubDCl7oW7KU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653491039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lutTIgY06gfm7uxV/MXJ00Vad6lS2YgsPXH+DaoHNKw=;
	b=SdjatyTNEjhyDHqpaqY+3tveowANFYvQUzczTvXA8Fo08Hmu/cgidn4bT4veHuMZ
	GwWbDZ/k39guiiPmstTj53nUwpsDwSwRxY9DBeIldIUe4SYW4iL+ZLDkuPtL+iVOqOW
	UfCWpbT7xnKdb2bcQRaRm6s+I4FsPi7xrQdnI3RM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fbbefc09-217b8beb-be9c-49b7-b7bd-bc134723af31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7dda214348ddf411974d07840373e4b3738338edd2ca8fe685e8e2e472b02e0
Date: Wed, 25 May 2022 15:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653491039
