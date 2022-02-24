Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639291373
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645738284;
	h=To:Subject:From:Message-Id:Date;
	bh=OHLuLxesCAem4jR8iQG6og4OtzwyPf57sUOFHwR23GE=;
	b=YkItUGQ00/OGlqWw2kwH1JxRKmxZfc5z83f2BoZXvueBg0kQ6erDBL5LI7GmFN38
	ADlZvrnSzmKAOrpSEG8+riyiNf2Y3uR87YTwj+jbUVY9YSGb3iyc42s3JNdIS7ye17h
	yMYethSsnXIBgBbGFimfBhaZlCrO8hdKPJ4YIo5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645738284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OHLuLxesCAem4jR8iQG6og4OtzwyPf57sUOFHwR23GE=;
	b=OdkKw6eY8hgx7PvH2WFy9gnMBg92SLLjsXIh6TXV274F3h4H2bvRSbtux2cHRQ5n
	xUaMPNARgNhI3a3WzKdNeebBzdpP0Ws8BPYyoGcNMzwTWN0Z+TU8uxoKtbmoxIQofu6
	IQtDzICEiQynV+EVzsctCk/TvsNpklJ2KdMGOVhY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2da556c1-1b82177f-bf02-4aed-9827-0a94bbf56d26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cacc46f782fb56a7dbff494f83fbcc6e61ee99bbe295bf94c3fddfe4299e6139
Date: Thu, 24 Feb 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645738284
