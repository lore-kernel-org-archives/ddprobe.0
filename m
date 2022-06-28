Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DAAD7A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 01:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656379612;
	h=To:Subject:From:Message-Id:Date;
	bh=PuUSAxf0QCVKOAHmIxtI4ijUj3p4rGpdg3EFga9MtQQ=;
	b=K1G90tNXIcwtXuUs2ru7KuuBoiUz1pOo8MzgaWzAhJcpC4EqqRf5AMg/SgXQSt5d
	/yxqVxkDnRJoc2I0ynoaKzidz+WRv2HIAbppu9o3IyyBdgFwVZ4JgL7oz4GYSbfOHhk
	4dxhI+qwL7ywMKjOvg47KpVBPBQQEDnayPDI92+Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656379612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PuUSAxf0QCVKOAHmIxtI4ijUj3p4rGpdg3EFga9MtQQ=;
	b=Pv/3UVqF952IP9m6btuCbeVJBezo2XRIUckfCyZQX95vVtgEDQRvWHiQ5rsl743N
	EyAKVqyA6fUfZPvt/ec/7DYwCHaodiQ0fnBfb9pMClEIBxtD85TQXuFA0j2tXBY3bt0
	DBUKZ+rremmI26kUPhIg6u7ap0fTrkal/v3Y/qtg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a7eb1c7e-487b4a64-8f9c-48c0-9a66-b6a75c719236-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b729fa03289ea57abc34051a78715d90274dd50b6b6ba77f1a5717b0e4a0747e
Date: Tue, 28 Jun 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656379612
