Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FDCC7E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 15:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645456584;
	h=To:Subject:From:Message-Id:Date;
	bh=k8xDIrMlVF7S4Kgp3hmF70HKMt1Vw0HI1WRylS27yXo=;
	b=J6BbROLNP2x9GMZqSVXDCwmLJzdm+EHKEUumBUO9S/gbv/h5we93z5S98aAtpJ56
	Afh2i38wh+3ABnpLuhbDEPHEsrtgPde2VVM2mLMH91aBGot9N+MR/rHqaKcplW/xCVy
	RWz3aa3Nn8RkemxigelgjpJj/TDX3jFj819l7lww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645456584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k8xDIrMlVF7S4Kgp3hmF70HKMt1Vw0HI1WRylS27yXo=;
	b=UxKyuuYlyRJkzm3M9omaFsFUiLXXtyEFIEIxhLvwTc/hlVCXexPeQEjYoQJhmPMX
	0oIwohuVe1JNz8xjwEmF9DSVmvOlMAa4jQjIyLkR18oCPznA+5gsisr48Eee3zllY/i
	/jN9o3dN2d1kpwBR03vytlgaXQR0GDHORmK8Wto0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1cdaf010-1064de4e-ed3b-4059-8b5b-c334e69d1019-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e8c28e002cd2acddee205d8d68c987d9bc9f9455059cef61adf7bb7afaf24d6
Date: Mon, 21 Feb 2022 15:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645456584
