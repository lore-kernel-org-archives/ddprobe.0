Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B58B2574
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 11:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656071212;
	h=To:Subject:From:Message-Id:Date;
	bh=0nEgxL9gCJt5Og/qMxDNIpDTe0IXLj0sCCcoS063rMo=;
	b=b+ZarXeEe/n08+cypp8d+uiV7wnSLQn52ON30uFstM1p62BLahvOuoxLjIOtMKb6
	oPZ42r/oLrhhCAjzC/YDLcVl1ucH5mrT7CD0KFfonrD/RAGzFwrXJeYrDMD0dVoL+gH
	bwGAad85k9qfk3hTeyg9AcnlkT7/cO18WFR97WQ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656071212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0nEgxL9gCJt5Og/qMxDNIpDTe0IXLj0sCCcoS063rMo=;
	b=D8SB+6HMEy+6SV/4dufGbWH1CieqwwtohPUT+a5ssuJ0ic4nb8/v8IcZS1AioMNr
	10gPhcV8qVWUFdaLUdALYy7LzXJEE7Auw1RtdCh12TE9lGn8BKOnR37jLg1hSMtBP6C
	HCsKKjGlE79bPe2w9LxfjJz1rLqYBJhxr6dQ2Ra8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018195894cdf-3ad3686b-cded-4b3d-86d1-1a0ecc7ad5dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ca96b87108ea22ad0d0999150cebfb98539f223c5b4a1ccdd6ac7cf82912347
Date: Fri, 24 Jun 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656071212
