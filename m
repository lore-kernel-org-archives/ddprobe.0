Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C2D23D2
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 12:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653740339;
	h=To:Subject:From:Message-Id:Date;
	bh=CEYFcVePw4KJ+krzkDX/iCOHAH3oN2XSy4ni+lbATBA=;
	b=P0Zkvzx08AhZgrem+84plQBxfK4rH9orB05cMFh3odGGBDx/ZNBO8MV1HDu0Ptg1
	b21TDFrtavVf/+vScu2Tda0W+Ou8c8WQDY6zE0gjp3V+3o1DkIaEkJ/+tIJjZeIEoH2
	Buve3e+HkXceskvqgSu1u/NttdbrLCcjxibQdScs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653740339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CEYFcVePw4KJ+krzkDX/iCOHAH3oN2XSy4ni+lbATBA=;
	b=dHxIfBFYYxrEqAyNsr/E2SGjVAObJSOXQjb2mx2LJCmBmtsmoduHuSmromMpeDQ6
	mN2QcBHRjHxC3NQbhhPl5cP+P9IC0iSxANVZXCrcUH1cSORlvCFuHxMAEi0GwL7nXWX
	NGaG8BiWmw0U/k4Xp4fxPXEq4EGb0D3dFc+nxLTg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810a9b009d-2e64ed06-2c79-455d-82da-5b275d663171-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f88daeb94bed44424bd2369cd37de54604f1fc664eeef5367f7bf770abefd5b
Date: Sat, 28 May 2022 12:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653740339
