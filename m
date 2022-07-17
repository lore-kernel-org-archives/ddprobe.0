Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150457F6
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 08:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658048212;
	h=To:Subject:From:Message-Id:Date;
	bh=1mmRPfL4g4Deww+66/GDq1hjH3VXz6McAJmtttQJeJw=;
	b=PF1jiYcI7dOW/WeNEMP+0OpXW4Fzn6/KMdJkJOKaViYuOWQezmtEqkhvZqFFDlfI
	YNV5Rh1/Kkpk4Nysu0A9zm4I1BBLe1jzuvsZPoQ4BKpSYpR3Gc7g0kryLWS57zhxi2f
	U6mLKM5TDQjjoFo5phaz0RZPv+pwmmiGWl6p7mJY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658048212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1mmRPfL4g4Deww+66/GDq1hjH3VXz6McAJmtttQJeJw=;
	b=YUENzBv3XzxPJfFByNvYWwFWaxJ1P+lAgJdzp+q13ivGNhy9L1UneU+YP0Omj/1N
	UXUAla5ipgR4raDsovwFgEFulcZrafLQjc/gdf2uTAz6iukY9xx/VeCA2dFDFyZftGZ
	eZsP9AciYfGgRSQSEKKvujGQ46MU/m2GjMzHTkNQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820b5fed3a-3cd9aefd-8f50-4eab-a04b-c5ac49daf683-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2cde7178733e60c81d23626d7bcc36c6294e5aa6c466b557880708f868955332
Date: Sun, 17 Jul 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658048212
