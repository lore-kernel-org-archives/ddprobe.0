Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8456B10EF
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 01:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645753884;
	h=To:Subject:From:Message-Id:Date;
	bh=uR3QvzfzPip7pYbhDy9UKPvuplh+Xd1I0SGbWn0izbI=;
	b=FeK5jO/7U6I+S97jQf7/lpLpvpffpWhuSoXc4DXIwPTRXCO32tAgW4CekjH/L30K
	p2dDqcw911aFjuL6ijhaa7yY7eCNVotzqyqF+xAb60gpFSuWa23JuX19GoDicGu7VsS
	6Gb0qaKxhQr4Bovbpv/yjHmtwqTAeI6TYWajgwiM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645753884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uR3QvzfzPip7pYbhDy9UKPvuplh+Xd1I0SGbWn0izbI=;
	b=acXrCLCTzRtVfMXu7+DE6fp+wL3rkGZ+0bi34MM4AFctyzhkFJH+WxtHnNay7V8A
	k2yCL9dhUGNsnddpi+MsLuG9o5eVXu8wczeoU20RersG88WbDNO0ap8A69aHL/NsVJb
	ElBEdspiUvnl5cyXsl57jJH5JgL8SEXhCj+BH9Yc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2e936061-fc10f875-48ce-43be-9313-f8205b7ae672-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a3223555e5ac551132315a21a704e052bbcfb65c78c3018b7c967788d725186
Date: Fri, 25 Feb 2022 01:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645753884
