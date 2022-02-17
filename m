Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C771FD3
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 22:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645136485;
	h=To:Subject:From:Message-Id:Date;
	bh=ntvz7lKyAYyAQ5362YB7L3oRsrllQsPuAszVfy+uIhg=;
	b=kap7uGFMHOEsbA76oKhaELiUpj2xBfibe0ZyGSkbpNO5b92NV6NdcRSsvMsTENin
	5JKapw2CcAY8nNLy69boXPGMbLHNx8D5qVVMVCyV1N5pixDrSxVeLzUDKiBoZAbI+vd
	Tuz1cK+bdM0WrOTj5cMwQZ39vdeM6J8O/OBbXfqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645136485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ntvz7lKyAYyAQ5362YB7L3oRsrllQsPuAszVfy+uIhg=;
	b=RP3Rd54yWMoiWOufRoZj0LXcjUZraEcxdwnoMNYWLLttb8b/27L5UlY8WOPzx9sX
	hUXJSZkOiTN359OhCdZLu0X4bwdkMufOiTHqq4dWHak1RNT63NGUdHvm8rG6Sqka+UP
	N5Aak1BowpQC+Wc7sNxIqAczSFdUkzVFCM67bRK8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f09c6997e-47486d05-2c5a-4c21-bba0-5aced137b262-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 063cdf7c9fea3b34b36428eda449a418705c81deef1d94dd86167574aa3eee5a
Date: Thu, 17 Feb 2022 22:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645136484
