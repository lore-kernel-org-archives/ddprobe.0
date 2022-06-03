Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A40E1386
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 18:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654282379;
	h=To:Subject:From:Message-Id:Date;
	bh=Uhqxt2Zje5ijhupIh8fQgI4cGSviOr8KJJzkyiOPCTQ=;
	b=HXbtoRcWd4fim2bsFqllMujgtxZskDUhbGXLBT9TZtw472V+kzF5BCA6nGLaYSPm
	wcZuymN/VICixpAdxE6r9fY6Xx35rvNFZtM5uBnbaNBBRRqSVcsWwyjkNyvV6jbAHex
	zqctIk8LpGzFkKPu5TtRK2SIeHGSGAOTwo1CdgLk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654282379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Uhqxt2Zje5ijhupIh8fQgI4cGSviOr8KJJzkyiOPCTQ=;
	b=ErC7aZMm46pvMbTMoF6tbl98aPAbFa1Qabiuh1rW5CANa3o0Fmt8dWp1sppsWCU3
	O2c7B2VEswiRNoAKA3HnzjneY59Jq1LmUdvycnHkvH9SnqHwwr9SbA42+u2PPXinQzy
	roS4aFkq3sKr5/mrSPQkdo5kcGVtzHKjJJnvBUSo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812ae9dfe9-869c1842-89ef-40f3-b04c-e20529d185c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 592345fcaab5ac506abfa2448c61b7332903e68e872421e1be6b69a57977dd23
Date: Fri, 3 Jun 2022 18:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654282379
