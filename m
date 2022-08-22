Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316F77EC
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661160052;
	h=To:Subject:From:Message-Id:Date;
	bh=LuIXVyjpijWl4jmZb64wGvzdXV2B8x3wx/2ZMOn9xvc=;
	b=GMu/YN84HCVhModQ6FdbhjPwirBnt8tYcct13jIRPtQCQy2SByc5/7b/Zeg0SpjH
	JpD5Qlyka3+mp+Kcd4plPbThAHsl9eWkyyvPSRNp7wSmaEyNvUS4N+gVgb+9MW5+rEG
	OU/IdZ6TjGIzZSTfI7p+4mfzIoWK14lqtpI5IrPA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661160052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LuIXVyjpijWl4jmZb64wGvzdXV2B8x3wx/2ZMOn9xvc=;
	b=UrxNu7/kpvIiv18fjZ9tY6rNZNtw4cACnUf+Fl2FaaJPOr07dsVmX8BuoWDDoCjK
	lHH0wJO1GCK+v+nqT+at2V0Ue3V8VZQLE3H80F6b35TXTVyXh/BbiKN2v6nas6FaNwC
	3M67l4ZkupKMuzauyoaOfliwzAw5/sK2Ejow+DwM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c4dad74b-a272a773-e741-4e84-b487-e20af59c5d4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd10546abd5c564c0b77639d5b9aa9f6a19bf89d5990c1bee11e2f3ea1c17427
Date: Mon, 22 Aug 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661160052
