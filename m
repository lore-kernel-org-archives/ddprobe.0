Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247E07C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 19:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650828238;
	h=To:Subject:From:Message-Id:Date;
	bh=OxP+E1TC/ZMgJTPuXen1qOukJNWfyv2hab3Lw+NO8pg=;
	b=IRLeBVCD93tuYi6vDjD+gA2O8sBPwq7sNWc96duthn2C26eQAPnVt/BjKY4Ym1aY
	cMPF6OP44ueKLErMH1DvJydUbEtJx6hagiVqe34WULfd5LgkSanmvSXeNaywanKwyAJ
	HmPJ+lVDYTUmrljBUJUNdmJIgEQPuQSYHU1b59y4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650828238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OxP+E1TC/ZMgJTPuXen1qOukJNWfyv2hab3Lw+NO8pg=;
	b=gZYBlp5xEsVsSzE5lh8pxOXk5T9nAhW4HJCo7i3RFBbE6UeCGyIRgX/69EF/AoW4
	yQhmGxHkX3gMwAVkJ0c6e+lx9WUOvBDX231gGzQqSHS4mO+bsj5nXR5giv/NKnAGvyv
	5ZPeAL5eAMY+h8JFHLzQP6DS1uEu7pxcVb5Xz9X0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805d07ddda-ec7a46aa-4d37-4f50-b823-b87820d5d941-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9276527339a374d7f7b281f77263f8f9572dba1f90cc025f4b031df9b85026eb
Date: Sun, 24 Apr 2022 19:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650828238
