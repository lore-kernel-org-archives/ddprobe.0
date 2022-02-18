Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0BFC28E5
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 16:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645201885;
	h=To:Subject:From:Message-Id:Date;
	bh=ZxEsGmWQy/bgUAbsZXTsJT77PPEmYwFYkDbpyKVWHQI=;
	b=QRtdBFJ/lfQ7Fn1hRnQimCw9hhkSBld6DPPDQ/zdjGIx5gUqxpgivu41EXc6t1YD
	U1q0atvzVz+NXQtY5KuiDavV8hbfkZZvP3HC4dAdlrBQp7Zof/I117lMe3SpThtpQ3P
	ZxdtrXCFlyIyUM64vw0RuOxk7UWqTcnuQtWFK43Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645201885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZxEsGmWQy/bgUAbsZXTsJT77PPEmYwFYkDbpyKVWHQI=;
	b=ETAQOwWnNppID7KXE/eyLvEOvjVnavFJgydgh/Xl45gBPBgP7vZ798J9/JC7zOLA
	HhsLIaWXyq7eiJBi0YkqISaNy3H//mxGc6z9AaRipx6w6Bk4dBWBKJwf+iO336oRjlw
	UhfHOa8Y4Xi2r6VSOYf6rmK/I0dXw0BAvfqMxZTg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0dac8786-0ffd5805-e878-4ac8-9957-77d3c628232a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3842877f553d63fba428324fe0eeb44a918722f611a0930a7fb5c0839f03d35e
Date: Fri, 18 Feb 2022 16:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645201884
