Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B54410E6
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661311852;
	h=To:Subject:From:Message-Id:Date;
	bh=FlcHhjT3icCaaBi5FWoRm2Hs7DuE28ZFSZYIGOvEtOM=;
	b=jxZnTgwayGuFtKB+uN8bT6k9HnYcgVT5qwAcDsaRYnGi22YpPZckaY37xB5SiqZH
	IxE/spktK2IbLLx0SIb5yDwwkyJnQdSh3Cm2skppwCjYJiP5aq8GF7fYzjIjhVxG73F
	uNLUEbrwzqLXveN7mPrGDetjLwHaObPkBddCTxkk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661311852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FlcHhjT3icCaaBi5FWoRm2Hs7DuE28ZFSZYIGOvEtOM=;
	b=Vj5eW3+xdCpx45oXtiCnv2gDEtH96TCeyhtiXeu4xb4pzeIpjO450+D5galhhj2r
	FswKHXhysgRVMkAJBVsa3q+EB1JhPP0V+togZ9d+rgPA8P6fF2E+OZ9WTr/PBcXFpYl
	S+s0Kl0PXV1zoV/TEtL0cIZu7JmXi+dK0EQ1FmUw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cde72008-0822eed9-9069-4508-80a0-30e7f1e679b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93be3318de763d370d7913a7df7fcfd270a386bbdf900c54a41b56a26468de3f
Date: Wed, 24 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661311852
