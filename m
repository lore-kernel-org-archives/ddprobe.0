Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A61184D
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645695684;
	h=To:Subject:From:Message-Id:Date;
	bh=0ax4egK/tnKpZzB2kaCHBuiBUVgpJ7Cz/pCcM3kKkJs=;
	b=aRoaCMjOlMA8+Wu/E/dwMEFr+ZuJhb3dN+z/dsWdTr1lakcgE3Xbccagc/VovvXy
	NxJJW9vUgc00M9RVmJxNg9qtCpdvIBN2MhrPpNgjvFtY43AQR9RaQx+mGlFBLb5a1KP
	hkkKrqB0At32Giv+M8WS5okpK5djaThZ8qAwBL4E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645695684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0ax4egK/tnKpZzB2kaCHBuiBUVgpJ7Cz/pCcM3kKkJs=;
	b=Ua74/0KTVXmFvUdxcRPbn6ioIWc8lTlejSKS/4++wxJ7emGsfq3ETKSixiDiiPvR
	W5KJLe5fwhaKwITVTZmn4KeTeBkmUUJAdRgH0JCWr8o2cV+2R08EJ0Bd8Hpny9bXzto
	4obiwnd60ACjf79hg0u482iPB8gqVeq8K3i5Mv2Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2b1b50a9-6672f3a3-1d61-44a3-9431-602fa7b4d23e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f92537c15ee38eb71c09e22c002a7d06f9bcc38f1efdaddce636a09c7634b06
Date: Thu, 24 Feb 2022 09:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645695684
