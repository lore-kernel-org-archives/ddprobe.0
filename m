Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EB17A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 19:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655323139;
	h=To:Subject:From:Message-Id:Date;
	bh=ZS7qRzamiqzoZNXn9nTGEWeHt/dOY5ST59+LzHhPwzA=;
	b=cXGM9Vk9KlyWKJFs/viWLAXMf6gwMzBJ9G0jXuTcQo6shqt7mHPJi6rzEQagv7+p
	CSvxvH19jy7ZrqAhHqy26VOp0sgorry2Q8UNE0oMs0UBMEerCt14aERIFOihhvKAo3K
	u+zA1wZtT21VU2OEJApyZDr1nlJDF5NEZLTBDGPk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655323139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZS7qRzamiqzoZNXn9nTGEWeHt/dOY5ST59+LzHhPwzA=;
	b=HBwKtGcMokRin3cUq+iC1i0MNwa6h20xmcDTRR5x11T4bMFp6VOeJNXXn3zV52Hi
	3F1GypfsfckdwrAA3s1S3w8qI/QhtLwQHXBOOwu+4Ptp6rNXKdDu8QASNkcQBXi4ZbW
	MPTlMG5yPtSvmEJVAGuqyGA9Fhp3njM23P/PD1c4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018168f29d23-ac0dd9db-0890-45e5-9581-d666d4d63a49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea327467cc4c31e42f60624bf898227135b0c3d83ee07f903e7452bfbc781871
Date: Wed, 15 Jun 2022 19:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655323139
