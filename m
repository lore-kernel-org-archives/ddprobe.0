Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E54179
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645343785;
	h=To:Subject:From:Message-Id:Date;
	bh=V5jZjKEI2CuW2HzCDqzV2Gh4sUa4AvV41VYNalabSSU=;
	b=N5zq+2zWlYmgmmcmVHKZsB7kQthz/VUn7vpvP7jIgt2rjVdyFsfG0WCE2cFHObcx
	LEDiCrLGUggbc83+qGSrhUmLAhO4e9NUpFtfUtnweAMNPLWzo8AeOmg+GgQdvslCgmx
	/r3HgsE91pRKJ9CG8hWAFFDn1LYSGhIhLUQJyE90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645343785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V5jZjKEI2CuW2HzCDqzV2Gh4sUa4AvV41VYNalabSSU=;
	b=EOn6ArbXOsafBFsnMU5DgCNsox1hFj6bETUwkhybk6pLInYRgdsFxDjC2ijiv7hu
	PPCdKtqqfuJvxUXBx4s857LTbiTfNpNMzM9PaF7GAZvFpec6FZBkEx9G126ESsMXyqM
	TpUC3VU/ifYmmMtPOXFGs0+7vtTF2ci4xbWmSdJU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1621bfa6-53be8024-c971-41f1-860d-05935306449f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c54c29fe748a2233d8927f97f403908d46efab8e0e7ff9dc024579b5335323ab
Date: Sun, 20 Feb 2022 07:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645343784
