Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A9CA3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644866839;
	h=To:Subject:From:Message-Id:Date;
	bh=6H852tJLb82+0EUfmYm/7bmtGzBi5zisuDz+Dhi3oHI=;
	b=HyktnGJ6BbJTbRYpm6Oxw2wIKZar3VKafRf+vQZ0VgXF2PH1fvRjZTdoZ1eCEtsl
	o5Qr6IFAdnqm8qqIkP133YTfVo1vlYO0JvMJltnxMb6tVamn5b2y88KAOtYBezVhK96
	LFGo5ZfIOzj9x5WCnNdGV4Z3lVfQ2TJMxCDHAjtc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644866839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6H852tJLb82+0EUfmYm/7bmtGzBi5zisuDz+Dhi3oHI=;
	b=SJQBo1NjvF//c8urXvPqGFWAhrDEmv75gE1o+mS4B4iO+ylIWEun2aHpNhhJuUCM
	Yt32ks2heluqbmtR09gkgf7y851l5xSv+xvRMv2ss8IEMBMfuMVqZIBrha9OyFdiKu5
	cgQEbEUT5cEYLwKhu9inWU4LUnu/GMyD+YNfg0Cc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9b424b0-431a589d-6aa2-4a14-be2b-ac88e4c2f355-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56b03948011ba47290a810ca40165107613853663df6e1487b8d770f316ff72a
Date: Mon, 14 Feb 2022 19:27:19 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644866839
