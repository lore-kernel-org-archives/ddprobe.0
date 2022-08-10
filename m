Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1877B28E1
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660149652;
	h=To:Subject:From:Message-Id:Date;
	bh=hG3e/NnE2nfSSIwx4KMdMvj3Yp6XiEw2LIVUT8cVBiU=;
	b=iNregmQ7ZSqbV84Es0OPl/woG3Y1S08tXpLS4C4DWgLCdc85tA6at27AMmf11zZy
	1n4TIK+GdgdSZ5yMYc6H2HzIDFp01K2eqbLT1EeI+a2BFKWSvWzGB4zlruqBtexKu6I
	f44loGyvUBf3pWkvRF6N5k0Ya88eSr6+zz8N7feI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660149652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hG3e/NnE2nfSSIwx4KMdMvj3Yp6XiEw2LIVUT8cVBiU=;
	b=BX/5xYN8pGjOzJ+ptobfq1TxEve8sjPTT3h0mGHd7/8P0z/MbHayfBQYqsiIxAfW
	fTlR4XviooAopI6Oq68U9oAlxRRkJ6PBc3D+DbcySdkgYCCwpa1LJncoRmGBuD9yBDr
	NrIW1Dn6yITmzpkkBkjvB1OwVTl6DMJwBnV9J9os=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018288a15c64-b884d08e-c656-4d51-8c85-c1c77efb1ffe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af84eba0e67a4a27b5f7fd563d829aeb6a1521f11c5eb21021442a0b6eece616
Date: Wed, 10 Aug 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660149652
