Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A3733FA
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 21:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658698612;
	h=To:Subject:From:Message-Id:Date;
	bh=orPBSUKhRHkgMfY9KlMAai/MX8fJ86ntIX1dA3XV+pI=;
	b=OaAKpJkeO/0P7HoNh7mmK7WE8uXOHq69ihmDEaqPQBGRs2/c3HoheNVguKmpPL6A
	dxFa+df7BQPYUMLpRhrmhF0fbiD06NCR1kyasEIivhoREv4i7j584IxwRVJXd7p9I/c
	kLZQtAgOhDFYr/ozG9bn1HYnyM/xQmK0XFL4jnZg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658698612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=orPBSUKhRHkgMfY9KlMAai/MX8fJ86ntIX1dA3XV+pI=;
	b=jdLLP6WRUQlZ1HjEyoLo7en9Wm6bNnDQ9YmrKMvkEIPMAFwNFMtVo0dXu9TavTsi
	j+BuYMKiqS/QniC7bWUPIDGOSfFvcT8w/531smv9bZAOwjIQdlbZb6XV7J9LcTKL57R
	E7ZvazYvVN5xpIIjbOJVaiz+hoooQmDf5DEfPOTM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018232243e19-07f9a699-4a76-4087-9597-e5155b910ddb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48438f7e9f00effbb4a06b997798d329c662929dbc8f96fc6bc2c56def9e2f2c
Date: Sun, 24 Jul 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658698612
