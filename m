Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5357828FB
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 13:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645019784;
	h=To:Subject:From:Message-Id:Date;
	bh=xk6RJ0TsRmUxPHrvv3pLDSzAgruGLb4O0oGH/HDSyps=;
	b=lyL4DdwBD+qLrmiqmnDQfUlNybCp5vlTYUJ2/5WEUmz+UMfhWtElyxDQrsrp7H1O
	yS8ahtRdMJHdCMzDluvIJrwI7WMp0vDYhVHWMBFStpNCdiLDr5RvoHjSOwj4PLDQ4Gt
	W76X5lXg0Xq0qoNh/mcfmGW3cS0cpg0lBibUML10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645019784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xk6RJ0TsRmUxPHrvv3pLDSzAgruGLb4O0oGH/HDSyps=;
	b=UqKRIVQCcDPYq3pR/ge8VIteJshrTG97kaRq6lLeAX5fozrW/4zDw8rL+sS2yVul
	H7PfCBGvNMRmGQKY92OWs8ZhKpVsTx6smVRzabOinkJadAG/wq0H6dVcJHbHcmw5mV5
	D3nRZBiOYZtpJXPuEfraa+H72UGh4vTVg4KpL+Qg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f02d1e632-e1ccb7ac-dfd0-4c04-a62a-14156e51155b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e53d2a923bfb5547eea009a527919e999da7bdc5b32d6c3029553c599b30d4b0
Date: Wed, 16 Feb 2022 13:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645019784
