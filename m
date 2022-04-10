Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D22ED1
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 08:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649580658;
	h=To:Subject:From:Message-Id:Date;
	bh=m6AwonXHo9eHASMay2/UWxOaIb96Nx/OivntmSk6GEs=;
	b=PPHcXWjOdO3nGO1VsGrpEeP73T85QzuQT5hYMXXbFymLMR19X6k8vqlBMWPPDeJ7
	G986Yj1R5HYcEjUigLAAYESSDs3mVRwL2J7GoaknBo/FUJZnRyXXJe9NS94mKEdzJih
	moX89b+h9jAFKtEdM2Pbr1nZNIOfroG636ly899I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649580658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m6AwonXHo9eHASMay2/UWxOaIb96Nx/OivntmSk6GEs=;
	b=Yzj4AZep4lQ2XnEq+IPqrpN1tSiCY3ZBgDDgKSlOHJQv/IuYwLFy0R+KSITCVMaY
	oX2mb1uGD8j6E7pEp0JkVyUmokXu2+Y4KI/qkAadbq0JkWc4oz4DKlT0QlBfCprFLOp
	0AeFpJUTlsgprqDAMeL6p0wMnmbrx0OkGfMm6saE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018012ab4e7d-a460e7aa-abb8-4961-b283-cc882494a93b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f297eef42f1b33194963fc2b3d606561f0743de226330943d4b4d4c4d3bdb45
Date: Sun, 10 Apr 2022 08:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649580658
