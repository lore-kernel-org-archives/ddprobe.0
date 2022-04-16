Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661797B
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 10:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650103378;
	h=To:Subject:From:Message-Id:Date;
	bh=ytK6T63S4daTsUr5C8cMuSpDSYJIzr1fxp21mHoygNY=;
	b=ZPPYQ/yk0KAnDOjmTbsYMGfGJ2+/l7XiSHmT7BM2TtGVCLVywOsNJIP7D+WTrX8A
	BhASfHCSXn66/U6nAv9NT0+aqdHp2sYidPkVsiKnFnkrOZOF/wQsaqqcHS+SSfdsBUf
	QVS6HQWDaJbhna8VKZJQVC0X9lJatiF6+ygrw13k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650103378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ytK6T63S4daTsUr5C8cMuSpDSYJIzr1fxp21mHoygNY=;
	b=ebiIVzOBtBLTjkZ6GzFpl0ecDFox7qF7QNoGqVivf4ROYumfnbJV3gJi1NwIPJx5
	Iw+CPXsxd0lEX2C63fbXoJ1nStL9p7wqN7W6wyx9W7BtPc0s8hDrCT33uyT5EXqAQI2
	bJsm5KJ0MCsOMQWaMqWrP7qTKyNSNfyPftbfrJ7c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018031d3615b-4b423a5c-f649-4fc9-8b09-34851e7e1ff9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b992568cb7a4d04d732617a8e31b68725eeefae39a14160a25ed168530025d30
Date: Sat, 16 Apr 2022 10:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650103378
