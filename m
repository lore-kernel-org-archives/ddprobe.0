Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7287A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 15:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656172612;
	h=To:Subject:From:Message-Id:Date;
	bh=1gLtVUUK7ZrWLNr2VU/OyYR+j+qLFiZVcVEb44Te4Z0=;
	b=casAXW7MPGBynXn6cvEsajZANZOC1Ld4xS7kBUdb6B2TTAKkWKSqAHXHSG6iNAPn
	wGJtb2LLRnuD93/BSmdsCYcVqkGC22mp+JQngJ8MPj3IcKcW+X2WLI3+3kIzWh61rvO
	dwFbGs6sfz9x5qL8N07hGWkvKUAQhHwIUjS3uM8Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656172612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1gLtVUUK7ZrWLNr2VU/OyYR+j+qLFiZVcVEb44Te4Z0=;
	b=C46MA37UN4M8pD2j+Yk8BQAmvad6geUP+tQz8F3//HNKTJ6CDDOUy++x9yCSpsxU
	9qN+zII64lIqlC4bVVr5nSMFwrDcFG7TCcsKdPVghf33OIFGxV+teC/0ZdyTnL50Qs5
	HxC4QVmswQ2MWDTRt4pgYUKE8Peh+GgCbYn7q0gY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819b948b19-0566b51a-fa42-4df7-b8da-d56c0dc44a7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c348c0cb8ad4921189069ae3ba33cb4256c593823f55b73c1d92d6b7476fb6a8
Date: Sat, 25 Jun 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656172612
