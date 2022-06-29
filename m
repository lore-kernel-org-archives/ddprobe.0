Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042107EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 14:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656514012;
	h=To:Subject:From:Message-Id:Date;
	bh=MyDB7wMcBjtXpZFZGelUpJp5sLDRqHeG/k9581lu8z0=;
	b=aSx4vUqW05ASWKiY0VQHv4tLiQQ+h2Z9d6fvZMFaqWFElQ98RajiETySi5oeFUJy
	F4bVXIISd605gg6/x9SNNVQMT5YRF1aBBPLTljnC56KRxCpEHLiN1QjRdNJ4cxvUtkQ
	H3ig/0ptncKIxSxmOV9Cd35RdGgZk+qPzSGzZzFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656514012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MyDB7wMcBjtXpZFZGelUpJp5sLDRqHeG/k9581lu8z0=;
	b=hrM4z3QdRY2FOHOHKJi45jRZ6oFsBvvM9FVvhaWNmAIGaB7uHVFDTAnvkQB8oAdi
	Lk17UQ2pw5MJgEdE6NDTe9yTx8RbmkAXBjc4iTrmDWbyga0ZVaFL1tYUSTyN04us2XI
	+H7em3mGjznUVVgHJmeEFYSaV6S3ZhaQJG0EQOyU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181afede48b-82e88219-08f4-44b6-990f-82ce38d0d89b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a01e8447252ffe84a712c3b5f6956355eed2bbc859e2cb566834505ffc971f2
Date: Wed, 29 Jun 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656514012
