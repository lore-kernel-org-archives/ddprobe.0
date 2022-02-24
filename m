Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2EDC1B62
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 13:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645709484;
	h=To:Subject:From:Message-Id:Date;
	bh=c7ib3U1pLsMyW34kNag1pdEBx0pVHx++WQRHACfnYJY=;
	b=fPn71CZuxyiii2JH0Trld5UxFQdlWMPaGy7Jx+0SHspcZxj0r51vNVuADd+yT0LI
	LkuO4fag0BqIxXlrUSiDzSvcL1cPf3qhomGnDMGCT3R5HqjuTgLrghlpwiQAXL+ufLk
	WDi6Y+fjZf634TjCDRiHvFd6zt1E8Z8zUjVMZCHk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645709484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c7ib3U1pLsMyW34kNag1pdEBx0pVHx++WQRHACfnYJY=;
	b=b43O6rjnxBEFxy39uB5ecYGw5gWLSHNSWmSd3TI9/iomL5LsUcSyKYBRLHDRV5Hp
	8Z77UbbpvCbyaiifBop+tyy4Gf1YJK6p9fC752sNqN4ldRtVmXEYGpCzwSUcQTMRVJf
	Cc40tC+l23ZflDj9C4k+gJHfHe33cd8Yh541S5DU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2bede2da-6229f371-7e8d-4553-80d3-2697cf9ae2bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea187d7f32cc0657974f02a4dc01a0a0026a5d22bd10f15baef4c58d7bdd215b
Date: Thu, 24 Feb 2022 13:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645709484
