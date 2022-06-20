Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1743C3D7C
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 21:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655762159;
	h=To:Subject:From:Message-Id:Date;
	bh=XpLcz/5t+u8VNdWGVe//PWevOK7U4s59kuwnH/+DjrU=;
	b=H4U5KIFQlpve+FwWnhY7X8UvzduSE+YAGHrfLWUtmN0iBRFe7HnZKqQcOoMFX0gG
	EP3F8d+LAXNDamOtVFUeWfJzLhMbJ4WTGNeDUkzkl0dnMETYlR0+ZTFtRPm4ZPzoFhX
	a8M7K4qO6E1nfAegMK1TB91CkNrOhLwkVVs35w/Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655762159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XpLcz/5t+u8VNdWGVe//PWevOK7U4s59kuwnH/+DjrU=;
	b=SBoEKXa0LBVj8M14Pqb1Y+24zQN/L7SomhZyhpsSRp7YS36NB/iddZq/xPoZvK7X
	UdRjUBCrskknzw5vV2wTuw7Y08U6feuPjEy7sWVOqIcNH1M4vR3ZMYEo7qeO3Gzb/gH
	HjvRpJDRJZtWmX4/LkcvxKHScQj0F4BcwlkRlAIE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181831d86be-e297e5ad-539e-4864-ac22-ac50aa02aa00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c57eacf94b388c63dac54c84470277f7285000cd4329b580a2719708d595d9a
Date: Mon, 20 Jun 2022 21:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655762159
