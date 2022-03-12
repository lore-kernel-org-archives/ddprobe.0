Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD98D620
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 05:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647062484;
	h=To:Subject:From:Message-Id:Date;
	bh=m6nOhMZG1Wm/rh6JzptxayuEOnBnjc7fHsjFErJ0LEI=;
	b=PqKNHGzD4AUQ+3L6y8M8YTBbXh6+DF2TAYC23WjucvRaPlAQREz/JSaXmnbl6i4s
	s6g0XLcm7ZotS0fspKCxWaOjQygrK+ijKe45S2vuEqQZOfXMd4mox7mphh5tLZ9grY7
	txgL1W8RpTdpQdwbSHw0zdaz700lCg7e5NwQtz3I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647062484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m6nOhMZG1Wm/rh6JzptxayuEOnBnjc7fHsjFErJ0LEI=;
	b=fk7CFfejIUJLODfdFSES2HzGsFU2J9L+ZMSfrzxWcyywvVRbXLJ9X6Kl2wL0PP9O
	7/skliajGN+G5b9mBKov8HOFPzz8K0bFxUvhPAWIMtIfjNl94vQ/1mUo6TZ7fnO3/LE
	XQCy/52ZETe/Qz54LPa0n9fH5EVFTlWq+yjO83qk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7c930728-99f54cd8-e74c-4d7d-9c81-e5c596d7e54c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fccbad92ed6649fec255aef9a0517d5014ec740549547f8c59fc3f6a982535e1
Date: Sat, 12 Mar 2022 05:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647062484
