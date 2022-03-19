Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724746444
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 00:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647648084;
	h=To:Subject:From:Message-Id:Date;
	bh=GVn3vKmJehkPvSq+7phFt7Pzb9jt9dIshLGLhxZxACk=;
	b=Y1il5XqJndZSf9lvsGDMJC5KaplaPmbA9V9CTmW/uACc/yiV+VH0RJLHdInW15hl
	PtPf7c1BxDXEMCrGjSvwYRMpIvT7A3MZ1NdgSYz51TDdMgogxCMunolH7H4Xz1PUsHb
	Jk2TSBzIGh9BHJryGffj53h0cmWEDP+sq0Nt8aE4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647648084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GVn3vKmJehkPvSq+7phFt7Pzb9jt9dIshLGLhxZxACk=;
	b=J83BBS/nQ+nd2Vi1V+bvhFABDG/mhhLtnafiKJT9O05EBQPxExkZVJ2BNc9lgSid
	bzsuU/rQ/0OfOCgqZ9nwF8Y3ByHpbJo8ZhYINuvD9hW/8gPukYjuAn4RMXpjtjdhKKF
	6yI8QkTWro5U62EjtbftrZr9/HT8DVMOqvciKmKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f7a932d-61b130bc-3779-4aab-b0d4-b0020399c564-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f75aa7958aa7644b41222c6822d8a185cf263c138c06ef3ff090c629d4ad01bd
Date: Sat, 19 Mar 2022 00:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647648084
