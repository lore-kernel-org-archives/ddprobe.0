Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6BF4C72
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 23:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657324012;
	h=To:Subject:From:Message-Id:Date;
	bh=cBdpz09UErFprsLF1p2g7rTQHO1UHGnoQfPIvphmKkQ=;
	b=RZZXqgnl28Afsqa4XwvQbKGGKfJtL8NXBTxmXgX1QX0IkOV9O0ksFH9ks5r6/yhU
	OEoKagN9u5KZMr9ToadoLxumsfFlDbTDk6LcfOA+l5mkSAFrJcwLS1Sd4hR7TX1GPWi
	geDzyTXnEoETzMzyxQYGtI0QmO/UoaAvMCGb26kw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657324012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cBdpz09UErFprsLF1p2g7rTQHO1UHGnoQfPIvphmKkQ=;
	b=ET4ixqDEWeYTE5/ziq793paTo61t/g1A/L6uYpliCmbY9TQ9IjlwCww9aDLJHsRY
	nMxIaHo5unoKPVIUZt0pTgId44C5mMYoMNvWX9DbuxJFxJFZkH3iBm+WUqeLS9LQBI6
	0K6zzQhbblQbXMBGRfBflkUQD1mYlNqZXdjFbobE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e0358370-31c4df1f-abf0-4eb4-a9ad-c6a510a4178d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a399b03ace458864f83cd0f928820ce45fb2077352d8ef9c08c43c57b3c13c38
Date: Fri, 8 Jul 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657324012
