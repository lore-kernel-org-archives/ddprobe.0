Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2BF257A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 11:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656416212;
	h=To:Subject:From:Message-Id:Date;
	bh=Ea3Gb1MEbbT/DyspsNLB0h8Z9l5nWDSgIhIit9TTgaM=;
	b=JRl662h9KvJSEtndMi/cV2zn/wRie04C3uRYCGjVqLk3BTNiUTjmUrRnIOXlQmow
	hZRceXsroy32EYxjG8y971ZF2GmVdS+YmVcC3UNIe/d/fixjmkU0d1pyIBduSvBIgfK
	DUPqLEMmVgdH/3bVkaCtnRoeKu583A+I4fZM7XgE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656416212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ea3Gb1MEbbT/DyspsNLB0h8Z9l5nWDSgIhIit9TTgaM=;
	b=ExTGbvgKFBydJh3Ma0wC+3zgEnZpEL9Ak8hDBk8w1BQpo9G5cNz2vr/FqdFF9h4/
	7ZkADmFE1wZzV43EebCAMDuhhBnyRpLuxCfncINBINkdZ6zcqlkO300rfqYI9aS7Vlg
	1/fwRmgfGrfC7PIHXkKerQ7LLfM4RQnM7B4qXaBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aa19953f-eb95b739-5a6d-43d2-8a6e-b782537fa456-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0dd0a707042c325fc71b7565dead10b90834894b6b3226f0faad626f436c8bdd
Date: Tue, 28 Jun 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656416212
