Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64ABA2F2E
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660750252;
	h=To:Subject:From:Message-Id:Date;
	bh=qv2AREt9gK9iqiDWM9UeWaDyx8PgAGXcitpxlZTyaJc=;
	b=OrbzgiZbxt4nOcFbfkCcG2ZINFJCGh76aY8Wa7/Pp+YJjTv+Ef0qwyZ0faumkALu
	4RqBX2i5A8noecX2n11uC/x+pImonE1xysV8hyU7nzP7KNgOG1Nccn3+PZvimWNFpDX
	XElRDby4WnMpadEYXAtzK+wuIMK3+TlQ8E1r5OE4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660750252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qv2AREt9gK9iqiDWM9UeWaDyx8PgAGXcitpxlZTyaJc=;
	b=IlrbOAOdd+SNXrsLQZmHcoCI3NUe0abhuz72HBEa7nPqVChlElLFGdaason25u50
	z9I3hdxHDKfnJRSWlJ1Qbsq0mHCdBbNx3wccA5ARAUHMNIi63DsWVm7AndzEz+uAWNz
	QxrvsgiX0OlIcfLv0lzlr0XPrgJteReS9xssLCf0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ac6dca56-0b199df0-fe0d-46cf-89c1-6f3be0a2bf80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6deeaabbae5e6f928aed29609dfbaad544540858491954dd1f8bc7e4f176453c
Date: Wed, 17 Aug 2022 15:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660750252
