Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F346320FA
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 05:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657085212;
	h=To:Subject:From:Message-Id:Date;
	bh=9pyf2vhzjRFOPlU5jQh+rev7PlPKZPAFS4rJB01vqLM=;
	b=NHlQ+X0uFubK4/kIOJqjhB0KEcqjo1gsjPDanIJ2CHbydoFF451baKhxwktGv6jo
	CY/lg60FQf/Mbbjjxt92Daw8w+Rg6gcvroGUiu0i8rqkTX3PsixdKAI2OWiSyNmT5Np
	N0fjcU2DHWmI0tO7m/zbub/GCYxtCcURu35M+BfY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657085212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9pyf2vhzjRFOPlU5jQh+rev7PlPKZPAFS4rJB01vqLM=;
	b=LAIm6dXp1gLHIdSUdN42Ye+jSkPgHnwak2qIrefnhZWuCVnVJbxX/I01FmpU4KQC
	/nWasqbLjOaXoxQGXAXwGjM7EqoEtvIS+q762uaRjFPlBmRssZxjnUnCAt/9pkloPlq
	PxgPZ4Oe3oxdzV3pc9wAcYAISIiUj3No4cCLhpjc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d1f9b666-e0d554e0-5c47-4363-b613-18ef046e2d60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e589dc3a91262f5279edd2da52707e0bf82b83f9e00e8b8a3c7422a667a1ac39
Date: Wed, 6 Jul 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657085212
