Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF05185C
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 14:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650465418;
	h=To:Subject:From:Message-Id:Date;
	bh=q73Ucy18Hrh8HFUxQ2gMC38rTYsiklnhcdt0DsF+CsE=;
	b=m6izroM7yUjRqGR1rQTgC0TUGgJ2pKxCvVd6g8iijd2sULB4QaI6IjsnMaMtddN1
	x97nhEmwQgDsQY2n9W4NJWcgbwnviIWztIDQKlVL2C79J//X1rRBnY1JJZ9DbLIupah
	+dibvUXp7pT8ACdRTs9SKZA+4cCZBYp5TnGA2F60=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650465418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q73Ucy18Hrh8HFUxQ2gMC38rTYsiklnhcdt0DsF+CsE=;
	b=AVrYwsygv2OxyGcLXF7W22y1AKP7HOJX36obGGXvbbkIB42FP02Rb03w/DetIdjU
	oPi9cNyGYIxNeAsuNmCGsioD4gyJoEHm/RjFaSZRQDBgRfcJFydhhKSWTLYk+RcQhn6
	lbyLCQLa9dEygS0A9KaQ7ygNLaXVV/0PAerkETP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804767ac93-f3971913-174a-4543-b824-f9e7985a3b24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0511ff0f9877e62a9c49e93088c2566ab5f8e5526e26985e9d5cc3241dd6167
Date: Wed, 20 Apr 2022 14:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650465418
