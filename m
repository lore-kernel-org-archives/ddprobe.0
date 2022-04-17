Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090777A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 16:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650211378;
	h=To:Subject:From:Message-Id:Date;
	bh=YU2/xd44F/AspRuqfSBoW3mBjLolQnUyb8b3FPEOixI=;
	b=W1GbHOnsGkTs7gslewt8DsJnUdkHhC3cwMwV/AYSvVR6bbRw7vuD+OM0Nl8rmtpq
	ff9TCBGCe9QrPJYArSoAKSkV7Nwz/sNk9yRVMwu/frFpoynweNGX7YaxcuQ27FdjSlS
	A2zyMBS4nU9Byndvm0tIpa4Vo4o5tIE2TnD0XyYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650211378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YU2/xd44F/AspRuqfSBoW3mBjLolQnUyb8b3FPEOixI=;
	b=EycEluUqKMHbPwu67I7RfRG7KuSUMbbOu+V6wSJv+9M3vy7VUzd9FdAXcNQoK4Nv
	tiDi/1V/AcwTIQGWlWpbskrDpIptKygrIo4NuOYKdQXcGilI00ZuG+MR1Pq2mS4tZNv
	LecrHCzyxCd10OpdyVRc3A6hYb2M/qi+IYC8WVd8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180384354b0-d0e85ebd-7569-4cae-b6f5-6f3bb4149d9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 158a8282b90f83b19159c4a8a72c5ad51cf383139c968372b5f9a87d5f3c9071
Date: Sun, 17 Apr 2022 16:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650211378
