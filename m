Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AE45393
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 19:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658260012;
	h=To:Subject:From:Message-Id:Date;
	bh=QwF9hy0ju4K32oLCpnhAdWzFGo/SSAyiW0m+CCK71Ek=;
	b=DKS5Yic8Vg15cnQEz5/Q91IjN/lD8DZ6snLLbKKmt0dsa255n4NRvJpbwzg/J2SU
	g3PBc0Ut34bl7y8bgFHuMgYd/tPpM5zjzeFe/1LcTM7W3Ta1ZxTtZWEfdoqKy821VQy
	+Eoz0YqnYI2ZaMNjuna33x/gVF/gVGuAyGFi/5CY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658260012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QwF9hy0ju4K32oLCpnhAdWzFGo/SSAyiW0m+CCK71Ek=;
	b=gANTArHEjOdC9AesUGJ7vBNr1XAEomRyxFTpxz3qAuSGwqWGUmCirjJhCPNjg4rE
	t/qVZ63rBMmjGesO9DX0O2V4uyvNvzcwm9Xsaym7LIKeQKmQ83BcxT/HWcsMtX+XmtO
	HwvnykFYAwEhQqLSDEqahFVJH+v0asHtBQmUDGko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018217ffbcea-7683d229-2b7d-42db-9345-b5aea42aa918-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f71a4bd8cdb9a16399b457dc1b3b08cd2097531c41d845db459f4f10342270e
Date: Tue, 19 Jul 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658260012
