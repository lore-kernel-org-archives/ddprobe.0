Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F22815A2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 02:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654570619;
	h=To:Subject:From:Message-Id:Date;
	bh=cHeTonGmmaARhreSjaHZ/9dyAqGfrUDvQq7hm5yL2F0=;
	b=a95i4gTCKbNbBNXDPynUZFLgUiOOBnoqZkbrEcn8ut8BB1W9a6jAUo4rbaQCnXX7
	SmnDcHcH92LL7dyP0dvRZ1HQu3FOZI47vUD2w3eXGpMSP3jkKoYt6S4Y1vTp+jl3wMK
	XZLoDr2NwV1Vxt8MwNNVHmispkU4pO6KfOZW1XSs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654570619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cHeTonGmmaARhreSjaHZ/9dyAqGfrUDvQq7hm5yL2F0=;
	b=j4W8DgOPlxNczjGLN2E09tkO/NKk8YKOJUIeZ/6lo+UoJItGSCVPqqBWCQhQHn7J
	f5sUAOgBVPePH7Vd39FlXVedJ2cU6PuQOsIAKz0ofw+pqss56aLN/H5XSbPOwXeE04J
	iJ7fPY3hDUoVkFfVJTeGpnYOj7mIlujjgfj59n1c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813c181167-3a02404b-35ea-4a7e-8245-b7e8f3f768b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ead5eb04a9d68f6f0dc3e69d11e6cc90dd38e18be681a44cfe6d5ae8ed73d81
Date: Tue, 7 Jun 2022 02:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654570619
