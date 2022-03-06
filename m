Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9127A
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 03:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646536585;
	h=To:Subject:From:Message-Id:Date;
	bh=60s6CBmyqah7FBO6pflOC96hP16SWrMoiTHv91zf47Y=;
	b=MfNBOm2ar8+bRJE1qtQfyI/IC3vegGroFijp/CfO3N+AllCsgY6QZx2bvSK6+zYd
	xK0vLgfldZOjiK0sRyUeYV7Vzto6kwxCUAlHlq6JJn+nN5GDWzUzIBz0PKaUj0aLuiK
	j1EPcFmpZUACyx8YjUNSZb2nNRdFkKC104ZjJVh0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646536585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=60s6CBmyqah7FBO6pflOC96hP16SWrMoiTHv91zf47Y=;
	b=mGQxucl4GYf1wFZynCW2Mf1WxiRQVBF1NMcyp80z+var7RUztIlCMqrnsqoewGX4
	tGBa4OIFYCMGOpr1a/BnJCKAmBXaulv44ElDnedJuyHY/F0KMdbmybLwJxALkCDsx2m
	epI1DbyHVqdOLfv7umaxxJ/tjlF9E5D0Gq23foSU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5d3a6f06-b262f234-a732-450f-add1-a7b64f94f198-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4fb0d612da88319dd319e710ee1e4d0d1db16e4a724ff390b8f657ffaa1484b
Date: Sun, 6 Mar 2022 03:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646536584
