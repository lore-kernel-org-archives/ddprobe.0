Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C371360
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 12:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649594278;
	h=To:Subject:From:Message-Id:Date;
	bh=x0Vdzd4IB6h1Vb4SLH5+okeD8lwJyPiYUBzKU4y6qzI=;
	b=EUAd4EsDmTD2cPEgDqAegTDJuhe0JtL4iwrrEhgalPemHtK0jaJ0NUlxKGrBA7lm
	0LxxPCLnrt4A0Ds5naogKKywkKjCvLuoaKWfYaWY7NAeIYFZRxXVyE3iJw+CE4x57TW
	y+GohVk3E/eQcibGd5uLOQF54Uv2CjV+EK6y9D7I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649594278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x0Vdzd4IB6h1Vb4SLH5+okeD8lwJyPiYUBzKU4y6qzI=;
	b=VwU/ZEThVLOhIi125eFTTYR3H0pzxx/QKagrkbd+UJZCv9/AmS0lpPjp85jemtQc
	zJjDSw3s+guZ0elHSzVYFXicZbi7f5+TXChvKLW+SKSkRoGmUVdBqO/Nmuw7kESHUsw
	WboMWO1u4Y6XvCljh0ZUuyDnJI8lmHG0bHJXQEv4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180137b21ae-4f2e274f-e19c-46c0-8aec-c10e46319278-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36b7f077b327cb7829cecc8a6ca1fca629c2977fead994d0e85557a972334002
Date: Sun, 10 Apr 2022 12:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649594278
