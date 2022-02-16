Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D571FDA
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 06:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644991585;
	h=To:Subject:From:Message-Id:Date;
	bh=Z+veiBsMfsHTNGJCFnraludtbNhr/YCwW2UZDoEr4Gw=;
	b=OC31u6B+FXhcVnRvAuEDBvXwnd2pWbwF2tveDYeFJYWtKgf16tk3MYCWjdOxQAXh
	r4sKjWetCxBvx9mSBhyTmI1nThqIEsiKNMBwQHuUE3UFYHaM//LKXl3nT/dwyP6izMY
	Io2ybtyJnxkws4mwIkYqm8nDgxK7EBUwCfwp4BfE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644991585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z+veiBsMfsHTNGJCFnraludtbNhr/YCwW2UZDoEr4Gw=;
	b=lUBtrEhfVQb9p+d8jxgXadDv5kf/0az0xpO2qmddFJhNHfn8zF5evdpngk1A651r
	zvWmDyJmqHsM+iXn7lemM+fOBAf3gdsRf91Kf3g+hN6tjYlPoZftEEIGztMR5PqUX2M
	X7NwlwMGsk0wRGmuHqXuXzBVm7rFZi9h3sNsDzYU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f012399d0-4e1d9a18-4087-46b4-a951-2f2fa5945c85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2409b88c805034a1e064b7e10e6215b0c745c4d32a85faf7e0c890dd93c12301
Date: Wed, 16 Feb 2022 06:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644991584
