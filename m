Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C89638C9
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646637084;
	h=To:Subject:From:Message-Id:Date;
	bh=airHoz8orjPCsbh+22YRda6pM/RoAo9zTP8IW2v4s5s=;
	b=hWexxEQp3qnZj/mjrMKh59vLhHeka09aDvAW9L43Iw0fsswFES7/xPD3ZrKJHQgG
	5jqyUeTLgT5/9LQV3n/fNXyJ7jM10OBvIPk3XFQyq4LBjkqkonGwPVaZ9KOzFwO9dbS
	SQFMTFqZ8IaRTF21WhR1hC2xTdhNa+ohMpakzDO0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646637084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=airHoz8orjPCsbh+22YRda6pM/RoAo9zTP8IW2v4s5s=;
	b=h0h17FqfNYVdKRDgt+MiS0T8KGV7/qMCSG0Lc62jjjTj/3er7EmqCXhvCXf2scNp
	WBfZOl8HSV7N5guKAxVzoixHmPuhUq7KC9nyIvsg0mtLg3IE6VKwC3+X9qnyNt/LnaS
	V75ih3ZpccVN+0dFe62z1eYdc6b30G/n0BkW2goU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6337f062-ed665ca4-5104-40c6-9ab1-51132cbc673c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a0c482e594e2bc09bafbee834c7c668dbb2c562c60c8150050642d4649a8cd2
Date: Mon, 7 Mar 2022 07:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646637084
