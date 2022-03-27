Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7B57E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 12:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648382458;
	h=To:Subject:From:Message-Id:Date;
	bh=bfoqICaG3jnQd52fH6UGioyiQq7FrvqXES1QhyfCAnU=;
	b=Ny/gn6P/BLTde/R3HdmXvi8H4zokUyOpszk8zIyF5/454AgGvgqNMw2ZFzRI24DV
	SXTx51RySSLLgKJvqzVXJDg79gj3v9zLaguAr4A28DL5XssWDz/4ypdFMxMoCBJdC2V
	bamkIOa3fapmLvEo5/+lEu2o5D1UETzyzbAwEY80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648382458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bfoqICaG3jnQd52fH6UGioyiQq7FrvqXES1QhyfCAnU=;
	b=Fl6NEagp874O677Dxk5COpmBprcGdGo9t5IT9cUs3jgIO1IvMA5Ut/f2IoOJXMIl
	RvXgVc/lORZfil6S+taLQPtl7mAUvzVLWbjIi3nfzkHyKqWwRAJN3tL+tv3aEQx7X6b
	0OhH5IBjmEeOHXCwf4poSOaI1+Itz3gFOfNOE64s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcb4039a3-e55ac85c-e8e2-48fa-b0ef-987cdcc8c955-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c939967d6c4c15f3c43be9fb34ae56fe58767fa3c93cc09e523a042a8688237
Date: Sun, 27 Mar 2022 12:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648382458
