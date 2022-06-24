Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31A823A0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 22:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656111412;
	h=To:Subject:From:Message-Id:Date;
	bh=GpKJst84pEAXpj+Bu4A3IfXtHUV5s//qpVn7AoWNGcY=;
	b=BQsQiG43xf217RlC0MwUjB1ZSwdUtiz0hg9YfWrJNB7nzF1VcGOrPG9EKlgZ6X2n
	6kFRu9azcTRjtWKmEbuHwYctPY9BBuYA4LOSG4RgHLVsFW9ZslMfC5ZuoFCcw8mPoJx
	T8PeWLWGv4qtdi92z/C55vkYxJf951Y7kpbjNgsY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656111412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GpKJst84pEAXpj+Bu4A3IfXtHUV5s//qpVn7AoWNGcY=;
	b=cxUlpd+XXbjEv/p3LBEhFQj1JE21KijbwjzNn1+0y3m+thVSitcgcWRKQzMvOlug
	wOfZoELHcZfpZFg9AcKGJwfxnIZwQm7FHQPFWt5rOIDCzDr5a+YQ7AkhBkDtCGB4U7e
	OSRaiBt+A4HkbfnS6w4BlkKlC6YlnniNQPuoCVFI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018197eeb430-d781e0af-adcd-4176-b0fa-f1af51880140-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa3e6152e606f6bcbf50a503c1d5a6c63102b67eb8cb99941b5361adfe145c4b
Date: Fri, 24 Jun 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656111412
