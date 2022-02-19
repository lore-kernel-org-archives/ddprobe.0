Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A014F51
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 03:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645242685;
	h=To:Subject:From:Message-Id:Date;
	bh=o9zsX9+ZyXLgHnsdML2nqDBDt0C3O1lWSJ0n0ZfNLh8=;
	b=JOoJSmFjVFgYaoGkER5hLIZuUGAj3yVDg7vZnVKjsPe8YHqSzDdvtDsBAKHHebvq
	vQmkrHrZ4ojsDnurkyWqLyfgJaKmzXiBc08wIfGwNH8Aq3x/QfHbdGtZV3QT6i8oWv+
	AdjFA9+rNKqm/2b8JcEVrOyD1POGsSqcBPEw0lOE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645242685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o9zsX9+ZyXLgHnsdML2nqDBDt0C3O1lWSJ0n0ZfNLh8=;
	b=ida5BblpJPqhWAwkBvckSv7x+gvPql/QFMfsGRgR+MM3/Q9a/E//W8dLmTk87bZV
	s+gGoCCeR4C/l26NyCijplP8A3rdt5zRtkRB6FuwZwLMgNY+TUjcxPoHKJ3UFnf5ZHZ
	SeIDyX57+vgUA5qT6hyxcjCGElMGh4p6cIHCJtQs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f101b157f-9e3ab597-d0c7-4ac3-9d3f-68d787f15d4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcc8adae05de9c7de36852d9ae90a3402cfbbbf36fc65bd9a3b08557542c65d3
Date: Sat, 19 Feb 2022 03:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645242684
