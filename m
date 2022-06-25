Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0C917C8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 09:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656148012;
	h=To:Subject:From:Message-Id:Date;
	bh=IgQmVXL7ZfWz85i2MOPyYwv1Yk2oHQ8PUtSiYl7YQOA=;
	b=LgddekBaFvW/Ra9AwsWfIsLsCGSTxAhDEN/pdZvXuslcJkh4NXzIkw3l0t8fbZ21
	H/NHkwPjTCjcI3Km3b+DAcdd+ltrcfwIwfxgxEdPa8acKWkCGND4OquWiFAV+YDNFyU
	2IZfPOC/fP/bxM2Q0MYeTfjPQPx4o+Z93cUx6+pI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656148012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IgQmVXL7ZfWz85i2MOPyYwv1Yk2oHQ8PUtSiYl7YQOA=;
	b=IzRLZTirzmZfcfU+YmxW96UaDT7lpnJz86UdebYMJ+4/nU4knd35mIqjgwz4UJr8
	1UCDypDT5x/gK4Is4dMyaqhdNy7HuJ6ZkW0G77x0L47G4qJj3Ds6X/MYjuDQ+ph3UKS
	YwnTL+csdAsp3xkWn34rHrbQmMLrEFsN0b+JnVtQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819a1d2ce9-0bc5d89d-e9e5-4389-a187-2a79b18953aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a051585afca9072b1bb46f24a3abab0d62b12045ea2cff92d1876620e6fa4c2
Date: Sat, 25 Jun 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656148012
