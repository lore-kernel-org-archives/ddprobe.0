Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681BB5A12
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646132484;
	h=To:Subject:From:Message-Id:Date;
	bh=QksNTwQ/IQFXoxM0xo7e0KGYWTjxZg5mWelfMDL8p/E=;
	b=XVcNcpUbzGU/ppzUSMJv5jnqGD5KDQAjry+gxR8zM27gg0P+jxZG7cSBw4oKKBnl
	o2ULaj6JNczYzVVQFsFS9ZepOMJpueVL/s7rLHgWMkzJD8PwfUnvjC0ACPFtCT7rPtV
	Avg2PWfeUct7Q4EW9O6PV4Mvzk79AFjNTvHcgebw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646132484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QksNTwQ/IQFXoxM0xo7e0KGYWTjxZg5mWelfMDL8p/E=;
	b=U0sBUqajkFV2VU618HHXEpISb+XiqualTHmaRK2lRx8Uhs4Mlk7N+GEAEEKWaBDV
	qVBMlsrtpzUfiJsov/haqiMaKOeOauyv64qkJy2pxLJdnQa3vhAvvjuzoqqJppPzmK1
	ykyI+Iyq126lwVjws5tF8pF1tjVhOADSPuqsXvQc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f45245a85-7e7465e9-6607-4b14-a1f3-7d8ef64c3bf1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e65a654c881a5c08c684ed9ddac6fa6c0931974c3126de4c89655cc277db575b
Date: Tue, 1 Mar 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646132484
