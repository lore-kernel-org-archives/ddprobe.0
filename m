Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EF21C36
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656701812;
	h=To:Subject:From:Message-Id:Date;
	bh=okF1KkL8YWJ7zzcjdztYsrw6UXLiVMK8oGbJN9B04Mw=;
	b=WdrwrlL/7UXBrtAX0LpVx7aaDcmsnfrcfJrhhfAR1qyBqaJ0vz6BB+AKjTAAjp1Z
	qW8xqhcMufXJmL2aosV2BrPEA2hJYRNNuqBBxsB2zONBV5FUWqRYdnYD5h9hXIfoYvi
	rtPIab6dym+8jd3rppqwRgwbtRHWUYksETNENKVM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656701812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=okF1KkL8YWJ7zzcjdztYsrw6UXLiVMK8oGbJN9B04Mw=;
	b=NfUjx56caHOe4Q3mfwgK3ZjQcFVA/QvVog+LrEEdb1fRdQZdIB7fnwP7GaWYfSli
	ODTOVp9H7qhwHqnHtW6D5D66a8qf2vib2qzsiIdbrJnI55shYZCKee3hjjzrkyY0qnp
	Ab043Mhm4hdzlHgo1+jgE5vss2WZ1OH9k0LeXWh0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bb1f7e69-fba1b564-aa4a-4523-a966-3d181d65da31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87ee0ca447b7e5ab93f67757268682f254db6f5f2934ea7cd0479040f627cc26
Date: Fri, 1 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656701812
