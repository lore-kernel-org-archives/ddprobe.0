Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF0910F8
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659766252;
	h=To:Subject:From:Message-Id:Date;
	bh=gsM1P9GjLTtl13L2H8bw2VTdxQRv0EwKefQRIEgznw4=;
	b=YAl22BCwFfE3OB8xZN31P7whKNotNdcWYO2Q5HDNXFaP8FrrTPmh4+es1y5J0YAj
	IUB1mPvY9g7WLpU2mGQ2lfMd+D0qX4xcNDlJ7f9jF26aofh2TmVcccqK8zy6rlIX07y
	fakd5NFfTwiaoMB6UQo0sLbvvJoGfZhrcF2b7TWQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659766252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gsM1P9GjLTtl13L2H8bw2VTdxQRv0EwKefQRIEgznw4=;
	b=NgitbZh4EAgR8eKumuRKkTf5rcCLVVK5/LQhQI2cfGvWFZfn3NTrtCtkVkhXcQOK
	hU6IoAsPQJqAWfqgNATGLBHij0dIcNdZXQ4ishSrwWh8OASLispMkLWrftb62IZASdt
	GFkoSqzdPMZe3FcDAZ/HxNjjbidBVMLuXEMLt4Bg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018271c72430-387ce073-8f15-434a-9c6d-dc13e293feee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99b141c192daccbd19f333c738a8a11f9ff83fba13faca0a46c52978a6d8942d
Date: Sat, 6 Aug 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659766252
