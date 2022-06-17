Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E887F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 00:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655426519;
	h=To:Subject:From:Message-Id:Date;
	bh=JznP5t5m88X8n4kVegEOiXGGNks6ghoOWkbznnBL3nQ=;
	b=Z9m/wLXC54wBA9vSv/CaSafL/lyg+kqy/OdI3FUUoP7URmFhmY+zqzq47554MJqD
	mpyku7+DPdtoyJb0FebTdSVZiTmO/0ZHBtxCO/n77lrjtHiXmSFP2AE2fntej5DSrJu
	k+uBxmKUjB5EuCZw8Q7RdDK1qr8WLkDt+Tt2vu24=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655426519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JznP5t5m88X8n4kVegEOiXGGNks6ghoOWkbznnBL3nQ=;
	b=Jj+RNrsNGqznNS3Ht2UOFrFrmRq/SOd9KMiNZN2zybXW1ozY7yjN9CBpZMjmz9i8
	o+rU6Di0CtXB4v+CT5pLJrkYpu8omEf+WbkXh42up3j8PHI1pgRmPR5jrfQPN83QA2F
	q+1r6YPsj6uRsK/MuboPbajDY3CZEfNvB1D2Z0Kk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816f1c1114-f7c4022a-732c-4134-b243-6164bf6978df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a80e2be9dd0c5a9214eb6dd70d00ba00bf43b571b744e5fb7c67e5eda4e2c258
Date: Fri, 17 Jun 2022 00:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655426519
