Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1531103
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660588253;
	h=To:Subject:From:Message-Id:Date;
	bh=o4y+eUtjqqlHko4IFdTytX2krZMLponfdZYDYlGw4NA=;
	b=THWeVksNg7GVQe7ebZ9UZfBDdz2jcr6f5prJtU33ipe9LwD2LgiTGHyr3nPBbpom
	dxlxM5laj2FaMmKFj0RaihfPNX9bkGZ4Ljyr5vl/6I0Ed6yVQtans9F+FsHg2MhViAh
	ATF0agnMkPldond2QjsfPvRRxiGSgUNogOaLq3yw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660588253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o4y+eUtjqqlHko4IFdTytX2krZMLponfdZYDYlGw4NA=;
	b=byKWv+pWbod/Ax0rStIAd2OZHuXDW/TOr+FEyTOEVmpzsQHqFT6QK0/dDzDFD4qm
	SdGjkMExK2H72ou31RZjPUiAQPQ8SxX69s/hP+Fq2OroQ5XoSpXRcWAHHZ93Y5zkrJ0
	/etr8sk3bYEjiPWzMi9/r4blbiKNoxTWS3UYoJ9U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a2c5dd92-0a62eb8d-0d69-40aa-9ecc-d6a417aa51e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9da5221124c65db5057cd189242ea5271d678855fb23fef5e3d1932debf15210
Date: Mon, 15 Aug 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660588252
