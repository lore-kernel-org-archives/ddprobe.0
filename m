Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FF442F27
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645972585;
	h=To:Subject:From:Message-Id:Date;
	bh=MCjgXBssMKvXx3HRR+Qj/0wT8uKATrRe3D5P+UIY01A=;
	b=PWOc9aVGitqwl0kkMTNFpMFo9JKRUrGNEuMQsCqKZqmhVr8vcYUlO/q87C+x3/Q4
	sJDPHnDPxwGTxppgb8dpoo+lwo91Fzlh80dfHwMzIt2fu7YDS+EjSyJuLhPBwEJkb9J
	YjZ36p69cpNwf+MmzGHhRoH8Nw3IaMUcyqi4s/WY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645972585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MCjgXBssMKvXx3HRR+Qj/0wT8uKATrRe3D5P+UIY01A=;
	b=kzC1oJDQG74IJmMw78rsDcS7LFfNHMRyF5s5P3MhJtkPpuGvyBxAe3AV1svYoxnk
	I9FSxRycyZKrse0BQ2j5JAEuFoZQ14gkJyONypCXtBCZRPVQ9PwlUt5wCnKQNyOfYFj
	8njw8tJAX2PhY2CbSSgkqFDbrqlfQtL16a8ayfd8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b9c796a-a5036212-77b2-4017-b6b6-7a9a63bdd453-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5435933c9677ac78b80a15a6913ddbbb7b54dda2e298175f1d3d5dcd7187b57
Date: Sun, 27 Feb 2022 14:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645972584
