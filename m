Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AA1158E
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644948084;
	h=To:Subject:From:Message-Id:Date;
	bh=wk0R9/DYjMCTVlj4rZ1A4vODI8UppfvNg/mQs3yMlGk=;
	b=HEb7ngf9IliyPP4HKkGn1HZffGVo+oPASgh/pGwMi40kTSVr2QFCvCXaJYmJmP7b
	G4FlnJYXTidzmHICq8TYeyX959aWT4Y27qeEOwQV7rjZp/D+h0HnnMGPyDS4ZGRZ9xk
	zfW4QcvBZkrNvaegSEKF1sL7eBHuQNzHU/LHQH0U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644948084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wk0R9/DYjMCTVlj4rZ1A4vODI8UppfvNg/mQs3yMlGk=;
	b=b6zqJsrbrWFHk63iEy9HEFDTmVlT6qO72Wy1h6StbPsuGattFxitkNOCtL9oOYK+
	fuEw6vYMT88/iFQ9drYyRfAlQIW/8He2UM43ISyUbQ6jD6VnPof/tENGHNUS2n5g7eN
	qha1sKX8TBbn8eOq5cMyHct54tIdKjUndmcpF2kk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efe8bd832-d093ecb4-ad13-46b0-ab72-36f3a39164fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d0c8ab39f34cc13adb7cdb395a71c6f7679c5a813cd8fd0e6f54f7b8c3a6ecb
Date: Tue, 15 Feb 2022 18:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644948084
