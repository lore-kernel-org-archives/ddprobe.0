Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060C7624
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 07:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656401812;
	h=To:Subject:From:Message-Id:Date;
	bh=JlTBXpLrj1BxSCRoPKSxs4FX2JvedPlqtTu2EkYJWWY=;
	b=AtMba0MTD7lUQIVM3NZo12PsEV84ZWr3X/hzYa477bj4LmQ4sqWxf2V1R5Y1u6Kd
	WnBUV2oIJsFxCc9ARt78rHOR4YcLSwE8L/XxRbvzsgOe83957rVOp1VeTn8tTFcMhgx
	oF6ymLgZNS9FIrf1r78Hpo6hLGWthZNDBs+vxWU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656401812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JlTBXpLrj1BxSCRoPKSxs4FX2JvedPlqtTu2EkYJWWY=;
	b=Kri1PteOxNqtZkRk1wlivQJWvQogxBe9g+oHB03jGIL0X2R/08cFfAJlF9NYVrr0
	ukFJ1+oeF2bJwSG1IcEPakuF76/Tqeft6AXnEJaqAEZFL5+bHeAe9VAw7453IFkDo2N
	4lt0EHeXIxranhvVL/mTBTQEkCTrph6AZf+3QRTg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a93ddb40-a45f6613-0c24-42e6-a720-ed1e89dc0945-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95f806289dd2355680da4fd267bacd64042b7d939581b2f5d342eb265635763d
Date: Tue, 28 Jun 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656401812
