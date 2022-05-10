Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DC42912
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 18:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652206619;
	h=To:Subject:From:Message-Id:Date;
	bh=9wF7C5Q6xV4H8R0ADVTARhrGcYhGU/u4+oDTre0TnCw=;
	b=XvM/eE9kzqigkt9ABKj9oKI6bpNAuQKK55Z72rG0GnbmO4us4pmGjhFmcJOKSwh7
	oSe/xuBxVkKJDxYjxcltZVgTeqGBC1Sq0cDx9fuvCPWH2ZxQZOpy3xnoBCzN6clsG6t
	cHbX2fPq3FUcBPNvTs5yYzdqMvPgN6/0DAQGMdYA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652206619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9wF7C5Q6xV4H8R0ADVTARhrGcYhGU/u4+oDTre0TnCw=;
	b=HfNvctSogJ2uW6qnVzzwT9fai4Gs/2d/m3N7XNX3iH4UdUNRK6R5CQC35SS6CjV1
	nk/91cQxDJCStBbXBbmGIZgTjootGcnEBTLdW2AEE3LmUnI0kKqPOCGMLmwcg9EKhte
	HiJaFBYy/8plFcub0+bgP3/IbWBJGUyHv9qUnamU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180af304b07-a59ec041-844b-4600-95e0-0a8c56f980bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33b80f4c2383af0968b2a46a59ea4bc3dd0f367c77f3bd63b10ca4bac247a072
Date: Tue, 10 May 2022 18:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652206619
