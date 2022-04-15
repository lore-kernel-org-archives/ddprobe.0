Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18171182
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 02:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649990278;
	h=To:Subject:From:Message-Id:Date;
	bh=m0U0gj8dC8jVwKf8IfdxfjqkNsAhtkJcqpiGacU0eGw=;
	b=UkUSvTV2eHqI4Mp+CMaiMLPVqdzuAvPqIw2XpWoSupfsidyHFHtbreGMy9xVjEDu
	5Wk79fCRRKfssw2cVB00PVUF0YSsE3qf83KgXMaUud6CEpgwP3q4QPZwxcjOVNCGt8h
	RNRaL+AZehYd818bOjaKOSagjQv1Hs4yU1YUHjco=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649990278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m0U0gj8dC8jVwKf8IfdxfjqkNsAhtkJcqpiGacU0eGw=;
	b=fEJ9s7LeyaZFKe99bwyQRT0t3Lhgt7UZsfAn8MSWIQSlVzPIZQi5sLzIE/AuGSvt
	xKohPKyhRBDuW8c+ftwtnzmZ/4L/dA6+XrHkUyCJXzZYhEqVcWb7HNraI6R6fLDEM4D
	D9n6Yy2d/ebLIsarlyuS2I7nJByhtBGZOp7H1FAY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802b159c8f-821e7a13-bbcb-47b4-8a21-745f694d6b9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 111fd6f6badac7471407feabc52cfbf3826dfc5f93a1a383593e06e982de4f0b
Date: Fri, 15 Apr 2022 02:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649990278
