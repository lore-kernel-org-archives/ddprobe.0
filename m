Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8825A3211
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645190184;
	h=To:Subject:From:Message-Id:Date;
	bh=gD/xjyJdON59evZECk+jYcpTVzYtO1SpQmoIG/Jwyus=;
	b=Sc5ssJ2cVtnIrxCDJswynD3I9BcDczKtVc0fSWkqg1wGGFFpDipI+Eo/hVcnETvm
	hlS0w53atByHSLaowQs6CPfJq1pzCAGta4RgAu9z4q6SlwC3HMHk95L33EsxKpz9z4t
	upCka7EuIk5++zO0Ns9qDXXTCOA1aro/Z+qEKknM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645190184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gD/xjyJdON59evZECk+jYcpTVzYtO1SpQmoIG/Jwyus=;
	b=XMN7eOlOLjZfGoyjPyb2jm3NAV2UYMNVgCPE++DvJSWbaKaOkGxBEstVOqRRwvk9
	PC4jt7b7Xuth8gU014mJl7/xNbC3FjJup0cLjn4QbtZ1//8dglzCJpMaaBb5ZT7ldRY
	l5r6SnIm6BcLIiZ1yFnxe9FtcNsA6Wejeuumofi4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0cf9ff5a-86449673-24ed-47b8-881f-c2fc4b2fdb8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79d8d0d8de3af7e7d100787e0d88c1f69b4618a1122eb5c906f5b42cd725fd95
Date: Fri, 18 Feb 2022 13:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645190184
