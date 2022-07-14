Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163F82F25
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 09:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657791412;
	h=To:Subject:From:Message-Id:Date;
	bh=2jLbRLa3rWpZjAmwMfjFQXim1qjtXcj81DmCYxUWPW0=;
	b=TdRWAYcYyB4qElwyVlDiZwiiPzzD/3+2NcDW+BvfSkNp51PMHL1/Sl3cn1YjYQPU
	H3Buj9KShHGaZwZpFOIKf0Dq1zxTyqjPNBeLr4adbeaA0N9hMaX1pjHD5IE6EZ1r5oJ
	WEnxQnQVTHkO4BMuTKiwek0mfgc+BjMqawKxtF7w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657791412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2jLbRLa3rWpZjAmwMfjFQXim1qjtXcj81DmCYxUWPW0=;
	b=Z7wbG+hyaxF1gmqIU1CQZnVgyNp9t2rVDGrQZZERxodQmRBtmkNMMAMZZH+Sxane
	S/nlTvAM78IKbPOXVtr4g4BxfAsdPRttKKEbAp8G2zFzfRTSMcEHI/k0zwcwponomgK
	mrGptY/qVVHHT8wPbP9wov7Or3V+X2/ddo2FW6no=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fc11783f-4c69c746-ce71-4c21-8052-4ac58b7736e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64af0f903350e5c1b9baf0241cc0705c5f691bb7aceedcc049828a14c4cb17f0
Date: Thu, 14 Jul 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657791412
