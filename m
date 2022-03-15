Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A47827A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 03:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647313584;
	h=To:Subject:From:Message-Id:Date;
	bh=r3AoRaJGKwGQE4gPYgqLgkPoArCdpk1wUlEIvLlHB+A=;
	b=PHf5u9dqnxukqMIZNyV4uZlyyLC2voA7KwGvbC0TM88UuTnMs8uQYGtNeRUmxxXh
	o2JpJRfJFnqfCHJMF4MZVOfIxkWpwftTVNWHWdsNRddQSnLAWTqZ5zzCURm9RjmlqTI
	oTE51xYaBL/La4ByqYD5a4oVwBslurbG3brrR+A4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647313584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r3AoRaJGKwGQE4gPYgqLgkPoArCdpk1wUlEIvLlHB+A=;
	b=VCKH3jhxcRnIToG9k/UEEU9MjOStvdLefdtUr4fVB8TDRDzAoSyjSNFG+KizNhCX
	8OZfkl1b3vzbWx8keJJhAwB7RZgPK6H/6QOJwf5LDMV5mV1HjtN2+EdqOYEzgX2We8I
	G1+9/ZjUTI7cTf6fUp9dAsbpJ6oAcV+GVeeXDsiU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8b8a8284-133595b9-440a-4dd2-bd1b-3292539319f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cfcf05b92d3934bde2bda00a001938e863ba12077483bcd3108632639e0ebd7
Date: Tue, 15 Mar 2022 03:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647313584
