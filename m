Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B70C67A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 05:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644644457;
	h=To:Subject:From:Message-Id:Date;
	bh=YN/Q+0nC49h4+Tyo71oCMUYBfcc+JouDcFLEKul+Jj4=;
	b=iXsGfwlr+FcW4B+10OnC0/QmtG4zc/LZW2mXvB54afAYE5ldlItVgbYMZT2vj2gw
	5l1ax9verNlFk4R+bcnfq4bXa854DxYeWgow6NVi/k3069+JRaI6lqSYkxl/pw7nZVa
	2np33VuOnrNXcpl0+AQkslKYxYZkmbjqUevlykPA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644644457;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YN/Q+0nC49h4+Tyo71oCMUYBfcc+JouDcFLEKul+Jj4=;
	b=HgbarXw2cc7/HiM3JbRgZ+3rUYeb++GKXAb4C4gCouc84p4p9JUvE2cLZAVLrmtn
	us8tN9x9TxMA1SYnLKtjRBFEBGF3CkOLlQyDpDGx43Qd/U+yPwsxSY2W1calIqF5QOj
	n8EkFxPP0bCnqNh74gIWM2WtvO7Sk7qS7m1ci7qo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eec72da13-6076b959-739a-4d94-b602-5f189814daf3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1685201857eca5374961d1d441485417e2d1b8353a9f4324a4a69eee064a23d8
Date: Sat, 12 Feb 2022 05:40:57 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644644456
