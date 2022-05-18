Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C909D1FAB
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 15:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652888759;
	h=To:Subject:From:Message-Id:Date;
	bh=pjgtvXtuXsbLPh9lvIAJpHwDenjV63/QZWqBBautirc=;
	b=kNOmJCpXLoetWpj2FXUUMY3okWbVJFkaGOEO3ur0O933Z7ddv5CrB3cQK5pNFnKa
	D+fjsHIdv411S+DdNUd+7N1jdVX75Men9AGWrTZT5+6dPG2dsUc/1plvXREKLCs79m2
	Ap6st0hvLLcOpQybVF64pKfbOICAfPy3I3fsQ+zA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652888759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pjgtvXtuXsbLPh9lvIAJpHwDenjV63/QZWqBBautirc=;
	b=VNiUjtBOjLsT2s6DE/vU1J1tkEgfJikssm77jApJD85v9cAiICQlOQP5Q1UN8E4w
	LMdE5E2CfbSkE7ZfxOayHXgHkTtv/xENU9CcQ1uut+O9AURHG3/w598PMq/7UrCHvKz
	unxDihgy0PrpozgX7bf+4cirCZIB6N4vIB8QoZRM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d7d8eb9b-c13004b6-b9cf-48a9-a1a3-c61047c544f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 340700d8a80594f1f82cc0bfff25e8542756a07019b0350b521346496255d3ac
Date: Wed, 18 May 2022 15:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652888759
