Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5DA2110
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 10:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651659718;
	h=To:Subject:From:Message-Id:Date;
	bh=UL/rlE4CtuI9ywpHu7pj8ncG2n4Vk+ptHcneB2t+nGA=;
	b=NEcrOUf/jSig984YYVlT9eOq+/JxXoDWVFUkfpDvKSrXpBwAOWIivhqO0oZDA+cb
	ijayLzKK4KGdIV4KGTtKbMImbsyuL/zUxNrHtvU9ZOEAH8RQpXGGDDLmEbuo4hL6VeQ
	S4bHiVB6kGnkVyDhvnet+4rJKJ5M9GtZ5MVshU3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651659718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UL/rlE4CtuI9ywpHu7pj8ncG2n4Vk+ptHcneB2t+nGA=;
	b=IvyBW6B6VIMNcwG0UKDLFbf9gK59b6eRbWRDqjPp9ZkZLFmlTX9FQMcbBxJolDO7
	52D6rnM6RSw/NdwVu/5yhRffYC/wqibigZoldAIOjgDBD85mmZ+XPm656T1L27A6pbG
	rSr78cgVsvUFYsAmPFq9jw+6l8seDKfyIipqU+x4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808e973e60-6c10102d-a948-4e3a-bd8d-37fe6cf0bcbe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f70ee5cd24eb16f8cc98662126d756ac8c0f80544fd7571087bbb210adbb9d60
Date: Wed, 4 May 2022 10:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651659718
