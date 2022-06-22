Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D996137A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 11:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655897339;
	h=To:Subject:From:Message-Id:Date;
	bh=jBRLAwZnGoYq0nKvvkZxz5Hpc41XV+wsyRlGr+C4hqI=;
	b=AH+74HNsqABx4jpsP6o+IFWc0zG9jkU7RhEecyVVs8mxaS7ZdStxyaA22QSztpa5
	aMcDEpJ6DOU+eone8g/rzabaaob60OPYIbO/q/PhWYMHenoBSwXhgHbZMK9HscH0U24
	vUjHBlkQq78h4vQ1zu9DKCOsTHTtPOaV/10KyfQU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655897339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jBRLAwZnGoYq0nKvvkZxz5Hpc41XV+wsyRlGr+C4hqI=;
	b=ksgoqjUsDv8QcBRDyRcIhNQ51/iMPOTdzLAJenyyOqpBwkCMmEH4WaLuvIQLz2kV
	HWIH9ELXNXJwc9d8ZZM5sbq7CmgjO0MAJp2zqu5PKX4ar0U4g8gO9wNGICKoW5eOj6A
	Vg2fJhKIyl9K1dH3vGPYXRgueZEhT2DMSg4Rd6Uk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818b2c35b9-52a2ae3c-129e-4658-b677-e640f78cbd78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a4bc202f30a46bef7a4953253b2d8fe10ff0ce5a8c31ad8b60a94cfb0b3720e
Date: Wed, 22 Jun 2022 11:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655897339
