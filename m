Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC581371
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660312853;
	h=To:Subject:From:Message-Id:Date;
	bh=jiQv6Oyp7yetYAsEIa63Qk9DqEZUwV0d5aCvGeHqx10=;
	b=Lg6/YmHZloP1egJoXyw/37S88C6DlVtaN821vm0oAI5B9Kl8Za0jmUVoHggNTiJp
	UMC4s2+4gvqh4CYrnLEb/Tjsnc5R7Wm24t5U3xuVLkR9Pgwd15r+J/siTSOjkkPDo9l
	sG70vnlzS4FH2Q5NgCznKExcbR3GzeefmZFLAt8M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660312853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jiQv6Oyp7yetYAsEIa63Qk9DqEZUwV0d5aCvGeHqx10=;
	b=k4eyhtgpgzjG6dZvywJI0Gskqqt7OKoHYehZqm4G4jm24EoKLRovz4UT98dgkINx
	uya9+0SJAWuGERUq2AtB/xrep4ZphzLsVHSrEC85342U++D7sPZLm9KufGK5bSry/9v
	phykrUnnlu+n/etEHn/lUF74Lo2df9FjxxqFhD9Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182925b98ad-1cd522d9-3896-4aa9-89f2-26797703f9d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5415db6c05df17bd9b7b4e6c3d70dbd2362258e82d2c2a4cf6f0ca5d84eb515c
Date: Fri, 12 Aug 2022 14:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660312852
