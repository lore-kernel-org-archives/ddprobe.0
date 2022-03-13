Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670D662A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 01:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647136284;
	h=To:Subject:From:Message-Id:Date;
	bh=OtYnHOcem1zkGXua7k/0HjUFYhuA70rapEOzlu00X7c=;
	b=klg+Iae8uW+Fb5McLBJP9zczSNLwMBNt+W6MxaFjXeXHsuHwUUE/tfjzuC6eVdxT
	TwTwVE8WghRCWMBaz5nnFLpVFF0SCHRZsFXuTMkxy1vT2RQaEpmBzy8Segd9sWNRx+V
	NoL7IEYGeVrawhl4PbGybveO01hwA0QPmyB1ykNc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647136284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OtYnHOcem1zkGXua7k/0HjUFYhuA70rapEOzlu00X7c=;
	b=TjxpuDQZB+3Jigf1x1KH9+mp1a4sD0JbMKs43Xvxc69X/tazZ7zGaqq2ODO309Zl
	2CwKKOU1nr6F7ylajOK0NVpNo7C10Vh+jPv+X2P7Qko4hLpETaZYdrrUEAm2WW4dkxO
	K8fteFi/Yme2YUq5KCr5bH0bE8cHPWPTPB982VIs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f80f9204d-ca1c9478-ff42-45f8-acd5-8e8ed7eb7b02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1528e4ead91b34278ef1a76285f44d91cc06b90854ceca7f85924417bb4b03c
Date: Sun, 13 Mar 2022 01:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647136284
