Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477CA1C01
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660491652;
	h=To:Subject:From:Message-Id:Date;
	bh=Y3vNZ0EwWj5uzEAop8OLs8TWwJoxp1r6C1fy0pIjMQ8=;
	b=JXPymN8yCQwh8LcRKIM19IyTEPWUcEP9hM7IxzrJY/yIrKS2QhX46lZXpC+F95ka
	IS1bkW1X3zl7kPXrUtd5NuCXje24hK4AHyZ8TuYu/hIqePCOLCrSRidHx7YD0J7xH9h
	2ml/+Usje3KUDVkEYf32IQkrEQEIczN9bHIn2cCk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660491652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y3vNZ0EwWj5uzEAop8OLs8TWwJoxp1r6C1fy0pIjMQ8=;
	b=A17zy0oQWHosdrgxZKWEmkHN1i+uBSr0CR0Lb69BUajabp+Vr18xAOpxaK1Qr5H8
	OmmrcYN05EaT2Hy+79Rtaqzf35hnCu04nrnW5DIvscJHhTlt4mZUjs7H8uejyVbNqsp
	cWt7bl1L0i8wGS1HgodQEMt/Im4RLJZ+wIZxGLOI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829d03ddb7-f1e53f2e-bfe4-4391-9f88-10f2d7505d10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4130579b60a67763b45a799f6125b46462c6cbe2c09ef8f72e5e850e04c17e7b
Date: Sun, 14 Aug 2022 15:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660491652
