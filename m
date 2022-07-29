Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D8547A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659072653;
	h=To:Subject:From:Message-Id:Date;
	bh=BU/34OeUuREC4mO478rGMeIJndhYqS4OeQ01jA7u6qQ=;
	b=WvQt+BXHl2oMNjCfGcA+mWZW1sDZQGXFDuvfnCnRWDncZgu2TnPjJzKNGnxTIRK8
	OeIeq/1SO8f0sTUZ/pfVvEFuuSXDZZVUgWklkCZ+CK19uag2rN/sbxIR+h9f8EGIEbC
	9MxU4CBjT/xg1SaSEJf+zmQufHs471mAo4LOeVSU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659072653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BU/34OeUuREC4mO478rGMeIJndhYqS4OeQ01jA7u6qQ=;
	b=IYqhI8iTZjxeu4YHBxldyoqx8duNon5ZxaktLr1PH/hJyJxX59UiYmHohGT/WxCM
	i/jn3E1braIWu6gP5uSCjwa64s95g7ygpmgYdsF6Lyck25PAB7zzyDClkJ7rWfrXPaw
	1L8MWmmEbEIiJ2rAgMHfpz8NPJV11HUhM24POkWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182486fa554-359f0ef7-629b-40c0-8bbc-e98740febe04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a7abd80d2e6e7a9c93aba8064d7e808ac72cff6f0f139dcd0fd8816f3536c5c
Date: Fri, 29 Jul 2022 05:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659072652
