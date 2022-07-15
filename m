Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D362F34
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 12:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657886812;
	h=To:Subject:From:Message-Id:Date;
	bh=PjfIPFcS/I1Zda6y7ofAy+Zcq94pVer2pgHL42vlNOI=;
	b=TXOZf7zgn6i6uF1EBZ5/S1zYb7Xuue78V5WaFbEXBy2H1ZyeqBMMv4HGc9hWYOu3
	bHIgJqVygAIs0crYooOrsY8lQBiwvt9qH2su2GMiO7fvLGsJO7219JBacq+GdpJdbln
	7zcaMe7GoMV3NV8Zilks4K76pbQep0x17+Hatxwk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657886812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PjfIPFcS/I1Zda6y7ofAy+Zcq94pVer2pgHL42vlNOI=;
	b=RcV2f4rSRHx7MN0bij2Vi2CqhBT5DsllWKHcq4aWtCIrOofoEIbZSvyNNVMN09ac
	QnOe4euZyeU+N3n+yJcu7+0fj2nlxSrrP+18Fc8a3LIZ3HHp7EtYI6WeVqaHhgb6qvD
	tbA6uGOehoplep2kvXEClJUfxwWM41Rt0pcgCEb0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018201c1288e-62328dc8-0664-431f-be00-c954c4720d37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b9f5c4e68d8f09706d1e19e0477eaf7ec5ec1cc23bab80bdb1af3452c7ac104
Date: Fri, 15 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657886812
