Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52071383
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 12:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652791559;
	h=To:Subject:From:Message-Id:Date;
	bh=jrM6xgnV1Ve1WFoVCiEgfWOiew8c6MjDm7Rtjj3B7Ag=;
	b=HnWZobscwqIYwg40UShDpSBC1WDyigqhH8LmqE2rQ1TySuk+luD04yeydyxcjoJ1
	EQL30i0CJzmmxuQP4eSN5soGF3zylIMpN1q722BdUf7AHH2wAVi7J701hrCWDjxsO9b
	s7AlJsG7GPkvarhDsGiYT/y5requwjIF1jSaSLpk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652791559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jrM6xgnV1Ve1WFoVCiEgfWOiew8c6MjDm7Rtjj3B7Ag=;
	b=CqHXxohwQCXiZetPZ91SdPORbNQNEgUSsAPjE3AEavZaz8M+8ijA542yijJ+cMm0
	/28aNtF5zdvtL8xU3Pk2e5yTc1WsJknOm6KEW1s1iZWfbTAEcGMugTOlXR20ymGqzxJ
	lU22h8uwIkx0AO6zTMkvkghnNCbdbvzrst9145wU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d20dc485-35a8f6b0-b5fb-44e2-845d-8077e07c67c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48376473715d5323a12708aea1fe1f823fa7e12d908dc0122fab14c8a2effc54
Date: Tue, 17 May 2022 12:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652791559
