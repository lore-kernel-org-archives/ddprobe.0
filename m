Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727F92C9D
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 21:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653772379;
	h=To:Subject:From:Message-Id:Date;
	bh=PyKaJQVGCYdBikO53oZh7EpAA8df5jXrl1vLtJee8co=;
	b=H827toRW1wLI6nY3EYZrKsJ8UPgjlRH2Zt2hkejhmcXcdaLHz2oaOkYJ+NsTnTWm
	BqeE/a+xyGQmnGqVFtm1u7YMed8fuF50OG11mnLdDPdb+c+rupBFkMrYeaZpwNVfGT0
	ZR/S5kkUmn0FBMEoYF7C3y2twn7qF8PWIREHkrJc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653772379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PyKaJQVGCYdBikO53oZh7EpAA8df5jXrl1vLtJee8co=;
	b=eYULzTwpFAwYqeHeVdyGSOcj5kHb7QOrk78TMoNJCk5Ndz3HnfLj0+20bDeeu0YX
	zCyTLH5uxkQBtigAUsXC3BqJ2We4o/7zmUG/AiynsQDUrvuXtl/+VXQKd3d1fDKkMi5
	+JgoU162wfW3y0DA0r8t1rGIJQHSVRYR6h3QeKds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810c83e45f-3aee6b45-007e-4898-9e97-5d883b4d839a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa4fb66aa5b7c6263154d08004f1c82cc70e0cf76d104c277aaa705a7dbba31a
Date: Sat, 28 May 2022 21:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653772379
