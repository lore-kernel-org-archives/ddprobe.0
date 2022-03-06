Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A69557A
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646538384;
	h=To:Subject:From:Message-Id:Date;
	bh=yQLfPVYojf7Kui4eOov2d4pqyJ/B4mOjPike9xe+c9w=;
	b=jk5lUhjIkpV3lG8Mkorr6UDVwSc948K4fhrfzfcnOq6qmlg+AS60jlWM/Ckz5LqJ
	ecPvYXC9lDft0lYheIDl926xCZDgFgQyyl6p4vpczUVwqbknhm8E4N9gqIk3l9iUdMf
	W1BQ97INz3cqCb/EY4cIGKksPmXe0eP+2TyxSuKo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646538384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yQLfPVYojf7Kui4eOov2d4pqyJ/B4mOjPike9xe+c9w=;
	b=YfeliMS37nBf9IdARSaVuUU+NIvdW82tPF0hyAkkiYA/3hgl3tOusaRRAxS9lN9s
	eR4gXjlPZMbNYSLD4RPMQU88X+OtMzUYMIoGMa+RgqCnPfgu11YKQWb/egOI8Bv78Lc
	/UHLXrOApGZDnjoyNnvM9kQtzDzySG65zK7S+f18=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5d55e588-8fb84cff-269a-48d1-a6ed-ffbb1f99c211-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31680eb166fdfada93a6c859542cc313f32b6395127516ed03f2c634e554fbe5
Date: Sun, 6 Mar 2022 03:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646538384
