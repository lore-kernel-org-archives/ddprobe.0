Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C411FB7
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 11:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646567484;
	h=To:Subject:From:Message-Id:Date;
	bh=Ouaz7rAZulLjbbJTY5X2bjL/pVCjiwIAOyJfOrsOwkg=;
	b=YbudDXYF91igZCY0hKODujxH+s0fYDeLLyHTSwzzxyBpiq+QwWqe3mK6WVabvQ+Q
	TDk4Mr+c9fnoaXsm1GPW039cFLSCq5gZokNgq5BVbJ2tjakUcs4smEWrwtUQ2rw+hfz
	V+Eko8ecZgVrZ0wwLOpfdc5yQh6LiQPYzriyktYk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646567484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ouaz7rAZulLjbbJTY5X2bjL/pVCjiwIAOyJfOrsOwkg=;
	b=PeF8Jryz+CmGXdMTm3nWkBW8NMzGRQlJreXScIhCtiqPylLc2MwZy+Cno6c3chZc
	gVaQKhn1oQvvMqbMEU1grlCiD6LQ1U7JXA8L2klkNnXtFx/ygcBf77AgcjxwkcALkmV
	I1RTPuZMuVpBK6BcuYjjvt1oEQAFxPMEngqHU17w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5f11ed67-a43f50b0-a77b-44ef-ad3b-eb5086d38185-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc6a05757a1dccae02ffc8d54c00abc7243c7fb493f00899ac89bfe043510407
Date: Sun, 6 Mar 2022 11:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646567484
