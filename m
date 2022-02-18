Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695901FD3
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 06:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645165285;
	h=To:Subject:From:Message-Id:Date;
	bh=X2NjFPPCvwH4nH1+8dhEd94gJw8DrrvuvxOSFlSnkvU=;
	b=GpqMAh1FsmIymazh1vI7FcK+2eYJey+pK+JMEhh0wYwxXokUrcMzhC93fhrdgGjo
	mu7TmlIQq8ePoxAGMtcccw563CbrkvKta72j3nx9+8CicEswZ1nAZGsXLYE8bFFzMMY
	rCBa4nmx2SAAxkB1i/oONEO5Gh50NOobUDKImqp4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645165285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X2NjFPPCvwH4nH1+8dhEd94gJw8DrrvuvxOSFlSnkvU=;
	b=g+TLN7a2WXLhHKEeavioTb5e8RWAtDBuG/H/uJzJ7xDoV1DkzJp06oRl+bBpbawR
	enhtznkXqefugoadAGfP92EGO8wjs6l5eHnfoPGtLhaAHPcrZv+RkIgqGimcYkafTXF
	K0uEusSw/1g5vrBUOppaa05GEeX83HMqIbBxKFEw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0b7e0d99-e0a39477-f50c-4fb8-a9f3-f84e27261488-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 150ff28c8f0e27e2f34b0da39799d1ae7f81f227fffebb81d4d3050e203488c4
Date: Fri, 18 Feb 2022 06:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645165284
