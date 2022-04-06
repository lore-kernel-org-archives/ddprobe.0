Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D7133EA
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 19:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649272138;
	h=To:Subject:From:Message-Id:Date;
	bh=WOeeL4G4K1Y+c82kGc3XEDdb5SqMXsfor31qfQeR5yE=;
	b=KBMWCg7v2AQu2Skp/qJ5eHcaCuspZIgMdAwK0eMGeECNzpDVvDwBa6xZnqZcTj+C
	6y8AWqQQop7vwfcEXGbsivT7e2nUu43wv57/XDMqCel43Hq7cOGGdhPGDqf+wckWLwV
	PGMH9JM3fLEHTP9EeoqzoIVMK03gUHPshuZiI6DU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649272138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WOeeL4G4K1Y+c82kGc3XEDdb5SqMXsfor31qfQeR5yE=;
	b=kJJJUo96U3w0Ls3XOQl+xA1vznQ3nAo7S9zNCJLgQl2etuyY4puSkFOO6aCbX0L+
	qqniAGoRHNyfdUI01xvc8t2TtSZLbkm+vz/Yf7ueTnITqMu4cPBQlDlINa7RFQDP5qG
	0WeLoqai2AFgVUPQPTYNNackDXJYovnpfJLc1BYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800047aa26-1fdad0f4-e280-4de7-bcfa-42a6c6ddcd19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fe5befe1055b53a99ded65a435654a4a69d0d2932bb28ded8608d8591d48f83
Date: Wed, 6 Apr 2022 19:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649272138
