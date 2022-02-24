Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F677749D
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 19:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645729285;
	h=To:Subject:From:Message-Id:Date;
	bh=Hk+0pSG53eHwxhKeXUz7l1lkuO3FIwygrTw6pdXMOC4=;
	b=d3DXkhDwmwUuQFcLjfzvC6YM/jeIsdkiCb6+aadw/BUMZUdLZ/5KZ/fTrvDSDXgD
	hAHG6Lw6uUqaSkVeSG6qrIC2yaSVXCfuEvfCfhSnd2X2jK6ytwCw65Ja2zMHFNvZ60e
	cStuDYBwvCsZW9F7nf0RHPlLtQT1BnriZY8A9HII=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645729285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hk+0pSG53eHwxhKeXUz7l1lkuO3FIwygrTw6pdXMOC4=;
	b=Lxc32hCiObyyx2ayMA/cZKNL8vHRWNnOGtpuK89DZ9LP2WvxCHKbblRmAxbfP8j5
	81DpLJOKI4ZMJntpPdTJrqa6ydpz6ttm0St3sny00FaVAwqet97kha1AmKBrLPgsjQ7
	3nHFJXnxXPdYTQYj9yX8mOoqJ5O7L+aq4s3waYKQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2d1c0324-8a12a85e-589a-4e6a-9715-99dd7a049ba1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebbad7316e71a3eafec55eddb89a74c8d3fdf066a44d33b34602d2478f9dce5e
Date: Thu, 24 Feb 2022 19:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645729284
