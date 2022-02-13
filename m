Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F19C373
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644762632;
	h=To:Subject:From:Message-Id:Date;
	bh=dBcyVsoXmv8kkYL3PKfEYPo/0XVN+U2QMpZ/8SGERnQ=;
	b=JYSO4B2N+PVbwP+Zyd+YVl2H1P1cNlPWDnlncN2Qs7pP8Q+bqzpscB7cta2mbVqp
	GXDt0dzHkj9Tr3b1JALxS7pf8UIPSlzAKoDOtTVl/LuYNlQ/++2T+g/JWdMgKBZe2+a
	yjTg0BCaKb/I6kV2yoRtu18NqopwbSd5Y38Y7Ubg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644762632;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dBcyVsoXmv8kkYL3PKfEYPo/0XVN+U2QMpZ/8SGERnQ=;
	b=ZFcbRpvNCZcy6rRpjn4iaeqpKniB0uqGC1m39ilXdawFt6Q9UdfdBvs6KIhUuy5x
	xmCCubjq+/Yg36kJz95JTa23dAI3NvXhVMy1d0tduIEwiYQT8LxVJelc4i6bdxNR56F
	UKHeUAkHmGcoRyM/AVtuVXBdUGTxFRIA+sU8TLow=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef37e123d-2ddff9ed-5536-41cd-9708-ffb2868fddb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbc42153e1c268a6297d4e2ad166766790bffff4c5000bc80042daec57758696
Date: Sun, 13 Feb 2022 14:30:32 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644762632
