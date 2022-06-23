Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 979A51849
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 05:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655960520;
	h=To:Subject:From:Message-Id:Date;
	bh=fqGCrUzpcNOiJFUpONHJWBcA8g2oMEAHUSuWJYE6eUE=;
	b=DW8br7aRh+TUCKm2ZKSXmKR2pidq4TqTUbOO/UtjZniKrOOXTFNLuaW450f1Jcas
	Ardt+0/FEMCiOI2AKpB5PRhww18RjYG+k8clz7RXCngxF8fa2dIgRh2hlkDFg1psFeU
	FqzVNaehTChTH2uJN6dKBa2e+1Cm8fhu8YdJG5+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655960520;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fqGCrUzpcNOiJFUpONHJWBcA8g2oMEAHUSuWJYE6eUE=;
	b=QSnHY+0zs2ckp0JtpId7/EmGyoLb6ie7GOL022nc3DNej7YTYMghiRRSePOjX5fZ
	S19D2bfVMuSel7QRX2QfFAFRpiw+eiHaFdZMgQy1DfSjI0qircp/CMi4Vk2zQSqJ8Rn
	bXS6bljQV+iynCPMyJvWulqFgrmdKM3CcHuRl2nA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818ef042ad-b92e636e-9fa7-4ce2-9f83-1254c32a92b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8d683d0a33b78683b020a994b0454b58a5777e8280aa761a6fccd1602e76635
Date: Thu, 23 Jun 2022 05:02:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655960519
