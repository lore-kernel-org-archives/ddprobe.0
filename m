Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247993201
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 19:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650743758;
	h=To:Subject:From:Message-Id:Date;
	bh=WGKmU4o0uHp3ytGY5R1UWYskaqobnf7qKQ/EIwU4ozk=;
	b=dRNdHXTUQtmFQSfH98sNo7SlbxUHoM4Pm2geT5L6q9GEIbahzKeaGsrbZBFd3BbH
	dRYG2Ucdfl9Ocwxnjnk3mOC9TXAp2OXuK98r8mhwAfVLvmKRUDYOGlK3MfY/BXsOfRB
	tDp/bVeOkOh93nTUBkZtsSS4AT0GFalDIuRQ1tZk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650743758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WGKmU4o0uHp3ytGY5R1UWYskaqobnf7qKQ/EIwU4ozk=;
	b=Dn9rmm2vgYQgu+6wgSJ6yHPAEVG14c+gIhX+p2nVbyaXZPSVPV5qwXVNYc0Cd9BG
	QsvLxysbBWUGm2DfFvBgIFX1ACli6h+hTP7pclDr8pzUadhT7ifyxF6H7TjJiMVx0Fp
	lW8whr4paGbxDS9T3VKXXAbih7dlbmWzkJDbmx2k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018057fecdc7-410ada2a-bca1-41d6-a944-50dec89a0a46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf4f21f8467b35721afeab981dba104f2e1222f01f3004123f5960ca733531bc
Date: Sat, 23 Apr 2022 19:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650743758
