Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA46D3D70
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 17:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645897584;
	h=To:Subject:From:Message-Id:Date;
	bh=7Bp3jAhyfWvFBvXCT77vg52ixK0gnbtORzB4EMdBijA=;
	b=WBtnWJQHdiwtuvTQ7P/V2vGP80dFlfb3nbT1OKqDAnTaEfoYAkDpqmgQddivybzb
	Jxj1JJAH9tPiD/UShMJdG0MuOoX8cPLJlBseT91zW91vFSADZVEQiN9a+u+2m8ZOY23
	XuQO26OBWH1EKEHPcpu30xoVYCL1a7Rwp3hphbh4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645897584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Bp3jAhyfWvFBvXCT77vg52ixK0gnbtORzB4EMdBijA=;
	b=Pusba5SC4kn7ZCpyiqzdpfP/nbiFQoAd3Lw/ESlE9RxZhTsHIfcGueuySCs00SM4
	j8oyCnr9vRxu51OI6zEJ135ZHoWtH2CJA9P9C9Fr6/K0CA7c+M5k3Q+hAyGMSVq1yyB
	49m5upsTs7BemYjQu2m/G5yy6wKxddQR8oe7qEdI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f37241097-15772677-6895-4035-b18c-08fead82f373-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85066559fa8036e681366c1f773c9473f4b0043755368723bb346b040b9c2762
Date: Sat, 26 Feb 2022 17:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645897584
