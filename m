Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D40C28E4
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 14:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655388779;
	h=To:Subject:From:Message-Id:Date;
	bh=IVbO45eA1Q2zP/L4o7P7K/UPLkrbVEviXsNixblozOw=;
	b=Hgry8HcqSVXqJblYHAjIct1gKr+qiwSunqrEK+OIHJXWSkLLOACK1drilp3JQ9AF
	/yO8LD0ZvzwywjyayeriUzrdvdz8M3dfbKfiF/0A+MbfhXgnfX8soSqY4VDdeTylcG/
	D+2vfls0A6LpJDBG34sVm+e05WjH1JrLA5KHKrCg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655388779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IVbO45eA1Q2zP/L4o7P7K/UPLkrbVEviXsNixblozOw=;
	b=DrFtw/KTkTy6TPtDw2KdtFmw3AtPzrGimRcTelFWyriwrPqNytD9fLXWGQhhB0fi
	SQhMavC3ZMDQw6EY6wnQ4oS2GiwTtXKcMLyQQnW63Az6ZUBV0TjK7kiR040i6GdH/Gd
	sLtJOHL3Kj8AFNg2Y5/hLvI8MH0ImH3YyzuosYOs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816cdc330e-9521abb3-b146-45c2-bf7c-85ddf97a34a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc681488ad15dc2ae149b06b45df0e970cfa9c1501a79fc929ba0f7e487b4cfc
Date: Thu, 16 Jun 2022 14:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655388779
