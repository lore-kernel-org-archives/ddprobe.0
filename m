Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A24C1FC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 12:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645014385;
	h=To:Subject:From:Message-Id:Date;
	bh=5kSDi6i6l0vMjSwc3MF1pZoyRjuhcIHVyoDk6lMSYrQ=;
	b=WUG+qsGqVNi+URckT9kcDZVQr9r4/HqYX35n1cuSRoMBkTkgsshbpvxZrIj1KKG/
	ZLtDzZRtbqREZCSPKAq/WNdj8hXsdpho7bauZHyAZJM5F0Ne87olr9JyLqipWULrKr+
	HOWbksFy8mmi8JTZmDDRM+jNNfaTnprjL+aelKKc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645014385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5kSDi6i6l0vMjSwc3MF1pZoyRjuhcIHVyoDk6lMSYrQ=;
	b=V+NdjE4VCTZF1OaGXDAuVsiNmgvMz3MPRxfbkNLZbMod1wkYyAv4Kw2jV7F5G/Zx
	2HP3Fm4m9jmnDM8QXXS0O7aXCVl5E3fqdtpPDDzjEi7pE8oJLYYPd0ykBOBHW28T7lV
	iaFC96P0tNdHN3s6z32cEqmLpJEpdwnRY+wVV9X8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f027f807f-57aa95fc-0eac-4556-b787-26f1c19e1b2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6a817f6299965c52b52d572124381ce2ad95ad789603230d7402441e837de7c
Date: Wed, 16 Feb 2022 12:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645014384
