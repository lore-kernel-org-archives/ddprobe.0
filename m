Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BB66015
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 16:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658333812;
	h=To:Subject:From:Message-Id:Date;
	bh=hrcVG7M9EmGxFX+u+WOwf8RmvzN6TkvMTd0tePdspaw=;
	b=BG2WdqsH4GZPNdjX1WKJkLgyZ0wfyCaz67K3lu+XwNbzayAHDs3TVdn0bdpH3oBf
	qSsLWyfJg4SHtHI5gdYiOLAudCBHpAqiQXqWka19Sbzehp4PxQqpdi9SZeV5SByw77K
	i2Rrfi5U9sHP6XcKEGsrWkjiUyB73IkFLGzZmd3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658333812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hrcVG7M9EmGxFX+u+WOwf8RmvzN6TkvMTd0tePdspaw=;
	b=ibEIbNNScpaz/tuQDT2waIqq0joUKL0RXdvTDv9/ylBEk4lKuWe/ygMk/UI3ftw2
	IVmaqQwAjUkGhh9Y5aLjZuAb5ER2n/Z+RJ+Z9/JUD44BMtW1JvWE90dVIMsn04OA8x4
	trgpeVEJFrfVCTUM0Gq+KKVdSkiL7GRYsQz4s3Fg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821c65d660-4900ead1-1a2f-46b6-816d-cd043fdeb094-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f225eeaee3ba3c21c2af0fa52db318f50f0fae260a0cb24771c7fbce5c6308d7
Date: Wed, 20 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658333812
