Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE4C7A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646502085;
	h=To:Subject:From:Message-Id:Date;
	bh=i3qUxAHnkRzGFWhTHMFstwifkaaF52kf2BNxJVeDCG8=;
	b=HvQKAV4fNyQwjaTcOebqBNqFW7zyWY1SaXqt5uXBFEq6MIGCKFDC4PSI3HDJkGQh
	U8GTLAytG9cHieHbAb4zraPLl9OULGvZOgkFrhyWeSKj4XKRod/9DeXlPO8oPVLRaCI
	9VvF11S6bI75fVOPPnmG4kGqGBOz2Mu2Vyz6BI8k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646502085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i3qUxAHnkRzGFWhTHMFstwifkaaF52kf2BNxJVeDCG8=;
	b=XgLgkh5Y/Z0bv9f4Y8+HB2Al1PP05t3djGo5Dj2iVE8gBR4YJ1X7a2V++j1RgwFl
	VS2kMXcWeAb4Ur4UzMROxh9mrq+FIgJZHNnN0TZFty9wMqniD3dPkS57XgBUpZLk4Rg
	lXIg6qjjvIxO1ndic21D5iuPIxg4qVJlt9Z1ewp4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5b2c0095-d2334d52-a9a3-482d-ad4e-4736afe5a1ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d975bdbbb6721d1bb8026051bf7cb8ce8ec42a7057a320ff637786e4e2165cc
Date: Sat, 5 Mar 2022 17:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646502084
