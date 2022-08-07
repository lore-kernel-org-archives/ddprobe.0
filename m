Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7EF7A
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659885052;
	h=To:Subject:From:Message-Id:Date;
	bh=vzjC4Ggg0Z/980j/jNriiRbk/IwCZtgpcN03AnZkcO4=;
	b=KPjUAXlYKkiuJOz1TocFd9oQt+DwZx36XM1Ae1bcaK1Pgjqe/4IT8i0+WYJSe9FJ
	tiMdPEjJF/yn34IoZ2IwKaTE9RSri1b5Fwe91nDyc7mxbVW3GASnaH/ane154V4FB34
	7mtgafUtEEyLHA3cCbwrWbQJ2LRurr45OvjJBDiE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659885052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vzjC4Ggg0Z/980j/jNriiRbk/IwCZtgpcN03AnZkcO4=;
	b=Wxg7IDVtF3+EvoSEBA3TvVW6iRaaT0SWG0hqmMbRd++jyOvSLAsuXKuX38duDeq2
	L/wnAc02Uc9ZEpup6Hj6lqbRXRXAxFZB4bMoGd/FKkQxxPG7TElp8JyPDgzzEvyVTqm
	ApDaEIilIQJJX3JLM+BFsEtArMFR/i550uQO7A5E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018278dbe2c0-4f892082-d71c-430c-b53e-83bf565d2683-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ca3a5cf87e56f2700a01d0bebf88869e96c4ac000c9eb9b8f3432922ac25c14
Date: Sun, 7 Aug 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659885052
