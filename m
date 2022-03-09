Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A008C7B
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646842285;
	h=To:Subject:From:Message-Id:Date;
	bh=GQRE+XR8U6KxGAVddsVdTH2uN5SBMoD7EM8ApcqoQgk=;
	b=A6K+z/qLG32qeODdvyMmQ/X0A52cs5OUNnV6Bm+WtYRlDf3Hi0ReBpPl6swUW/f4
	41Kjg/9qUyUE2q74FB3wZ2uayAQObg7lCt69XFRnCGTmIC7JAkJJuyzqKJBcW0nn8Vf
	3L1GeNLv5SnYGgCXTsmJKd9ZVursipzWtls8+k4E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646842285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GQRE+XR8U6KxGAVddsVdTH2uN5SBMoD7EM8ApcqoQgk=;
	b=UHmz/vJq9aiA0krE/5GGkaQ2hg97Grq7UccHmTMXXuxxICmXcAe96ChVDQmUvImY
	8qBOQ+ILWlsTt2SW5/z94moVuQ7uNrcCZV4sQbJ95cu1/o6yKM8eCSq8BNvDzTOu+++
	COTIF82Ed7hX6WLQ0oLcTbIJs+JEQj07wBZgMWO0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6f730b12-f47bd1b7-4e4c-4f70-a81e-425f3622721a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b825ed702896f0c1db879e4417d4f7b4cfcfcb4fcda28f8f287730147498bd29
Date: Wed, 9 Mar 2022 16:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646842284
