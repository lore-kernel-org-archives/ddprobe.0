Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC7A62A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 02:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658023612;
	h=To:Subject:From:Message-Id:Date;
	bh=tM3i26flRZy1clj6GrUsFT/3UdLwjrCzpi85dmnGc3c=;
	b=Jp1j4qNzy3DYUx1L+fpvozKYb+sykFpH20Ekk3G1aGE0bDe0fFbhcPob6uXRPU9e
	t05HB+83tDQOAST7EE/qZV5FIwUWiEgmzGzxdACDZEnm+xYSas5CTIWSvsTPn1KFHFj
	OVyPN3Jy1X4OxfYcYRY4inn1auZM1V4yY0UuIWsU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658023612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tM3i26flRZy1clj6GrUsFT/3UdLwjrCzpi85dmnGc3c=;
	b=FG+ILh9Y0kEcM1UWymq76qCa5SRm0Ie39AnmXUezx1XQ7jjMJS1e1OGW47/a3ua0
	wgl7eeiOJrVa0g8bXt8cV9iwU8KvFMSrDPeJEfOiDcv84Uwr5+a8V+AThHMYeczPhHF
	rngDu03SBNs61SM4QI7YPSN0PxP+rQtEmr3XJEkE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018209e88fa9-238fd64d-f8eb-4cb5-8472-b4242ff8242f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 690cb9739bbd815b61bd3e4758312dea58b7e918a927f8cfb0f412a6446b7f95
Date: Sun, 17 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658023612
