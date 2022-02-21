Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543487E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645457184;
	h=To:Subject:From:Message-Id:Date;
	bh=WY4NxAkC+Hyu7YcaMGKbTYDDixmfNhGguOWMeKOIkRk=;
	b=cuqKhov9OQT1q5/TNwpyFDX+M+MkJg4r/vTxk0Zf7lmawy8VJ1f3odjwsinWukkI
	x9bjZOGj+ff0rJyKmf3UM6Au48tAVoZrenftWiwBisN0LPEIyUXluYU80NNzXQknZ2g
	1f6HeQ/VosF/s+Z2/cMAmA+x+s2hT1ww4XXIruXU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645457184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WY4NxAkC+Hyu7YcaMGKbTYDDixmfNhGguOWMeKOIkRk=;
	b=RgxLWkzZm+6RoYH8+uFRClu027PibrcnaXi7H2ssnvJSIcPzK68sg5yQ9eFCXhkQ
	csg/YA0Pn1V5hr038lVyncPVzeoinlit3dU474dgYtg7/Ftm4QJHtdufL5d9KcOc+hk
	KJDMGLeJTN6wXjyAK3YMvFTE51FbHhbCBC/s2/NY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1ce417e8-945ba003-0ccb-43d6-b0e3-4dd93f4e586e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d438d5c6e5567ff2c94299ce6560700da4508b4f8a38fa9c636409f309774b9
Date: Mon, 21 Feb 2022 15:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645457184
