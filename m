Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51635210D
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660998052;
	h=To:Subject:From:Message-Id:Date;
	bh=UZMhGQguSH3Q+MbqySLhFgUlq3apuZaKWciD50FnCbo=;
	b=V4/R6CZSt+O+O8r8SapjT76/cfQR7hQ5kTN2m4uJIR05OXUnqgukcQH3nLe9u8Mj
	eSpxugXT1+rWn+FEtVQjAi/DIDZfCR61778ZD8zewonEKE8EqiaRzqCwBYTVcw6Vtju
	xb4oVm8kdwN0W8eG8K9mx9dzZet9XlThXxtBh+LA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660998052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UZMhGQguSH3Q+MbqySLhFgUlq3apuZaKWciD50FnCbo=;
	b=Mlwe03kyB5kr2NaYjhRbhdahk3U2WXtS2sd4/r0uhZYRNUWpZm6kc4an8PTSKYKu
	CHXXsf/wPaZVIB7q9FcZUIWV5E2pRaInOOEPoG9YMGJ18JbrkPJfBdxo1K8NffEitCV
	KB/fbwkx5RXLFQuQ4y03vYmnpagBMLilLSa+KgaI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bb32ead4-64ca3571-43b6-4c22-b7fb-2fdf24e42a89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0699cfcc3e1b5f30131f2a91e3cc7b90f5b123974ed5ea07ad38cf1fa0b1100c
Date: Sat, 20 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660998052
