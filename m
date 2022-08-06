Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459D42F33
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659821452;
	h=To:Subject:From:Message-Id:Date;
	bh=6wHdv/DBrZbWg+zufBtdaqXVIsv3o8LtFJiRhVha+so=;
	b=C+ZlFUJNtCuSB6j1y0whNdTBrkKYqpXd0Ud/OQ09KYLvLdPSNJ4smUtPTOFv6GDk
	9WwNsHO8zE1hBIYdgkMQBah5mCQKVze/uG7YqqKxP4zre+WA836RK5dfvtLq15IGxFs
	NoQeaekuMrj7Fg9QXwUEMiTh9BfDr3WVx3LU8j9Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659821452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6wHdv/DBrZbWg+zufBtdaqXVIsv3o8LtFJiRhVha+so=;
	b=DXH2hkjinzDkddVRKjugCDeVe4eLbNqeZ6xLvdL8JsMMODSW29i3gAB8cKun0WA/
	Ezu3/E5/giGy8pDBz9Gpgcx+RYHeTjMVSUEA0zONNHXxcucfYLq30Rl/wcKEfS/FmnQ
	HNSLSkfqcPRGVi2VbMjGbP5oRk2ltV6qTZf/kf/s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018275116d23-c51ace35-c74a-4097-a1d2-9b3cc775a914-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9302bf4fff07f9b08fc7fcc551d0e7db87cead8fb0e1204f1e6684fa736dc6d
Date: Sat, 6 Aug 2022 21:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659821452
