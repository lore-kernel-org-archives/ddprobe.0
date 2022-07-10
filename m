Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2037B7B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 05:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657431412;
	h=To:Subject:From:Message-Id:Date;
	bh=Ch9bsfDLKVtCS8vwFGbbd4b1D+OnZm6CNB+3Bycj0sg=;
	b=Qlfxdt3iXdIQootx/WAIvhNvrcatvWNzpxiAaRnRAJ3nYTKU5OZpraFWLpST+374
	FmzOJixOQ3zxqF/jygBpGBsGV89oGCiIhoXx8FFkwTDeM+2p6OOdK6m1a562fV5jQD5
	mY9qYpqUEo7Sn/zTalydZKjVSgR8vkRyv+ommODs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657431412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ch9bsfDLKVtCS8vwFGbbd4b1D+OnZm6CNB+3Bycj0sg=;
	b=Vrz9UZu/o1a6X1w/pAikL29SmJhJ+30qZwHBkuIlKjapUM19duqJkzhBppycpxeD
	ZTQB+lwIqvB5tfEtx1MjXFQ/qfECwLI7NhCqE7hY7T8/b84jRgQbQVnQa8XXD1t2JlU
	egjOQTSxpKCKm3yTt9OwVamJAyv9nd1g6NtONWaw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e69c4e82-2a6137e4-1ca8-498b-a59f-7f4cd1af51fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93720233d7d04617f163a07f783c1b808681a6397741d77d0691c52e76b9f4f4
Date: Sun, 10 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657431412
