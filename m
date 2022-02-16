Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3342A2907
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 14:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645023084;
	h=To:Subject:From:Message-Id:Date;
	bh=Bgo7gQ/WbbsgDE/f4m/lOgwh0nX3XDduNXaYW4dSteQ=;
	b=g+1ZTRF47uBcFGhjEkMV+k8TkZ4RLBitqRbv0mHfJ6JtFIr9h/5FLMtznXWxf/a3
	cDkUivduGFovlzrI3N0qnmzqCqARHuTgqHTMDS5ESvA5vMMPOrXrlSJ5qsE8Pffialy
	y8ahUIuxYnycgB05dnf3vH4wvRfiHzrhpjLw9p6k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645023084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bgo7gQ/WbbsgDE/f4m/lOgwh0nX3XDduNXaYW4dSteQ=;
	b=YeHCWr6COIE1/qJcjFvSQvlUTL2Cm5qQAyOWHVTJaQba/jwi54j1m3eBAiai1QiX
	ZOORGlM0KHJKGNlBfQf2bJHzZh7GeQENZoo3dElchsMMY+64gABJME6RtIDbspCGeGo
	VdVJHwvLJeftiGSErMbPSEE1kO9XXSWB36MM9wfA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f030440e3-252a3d21-0604-4adb-a984-6d77f9df2c1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47bba3318ad3238571f71f8bed4f8fcea4b8947dda01fb66d7220b3f00839686
Date: Wed, 16 Feb 2022 14:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645023084
