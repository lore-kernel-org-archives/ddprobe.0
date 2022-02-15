Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B43077C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644896785;
	h=To:Subject:From:Message-Id:Date;
	bh=gqXWlgg25t1f/8ZyC/Yp/FYxJE5mLWBVlPHvJcMMMMw=;
	b=CqmWUqs1UpKV0pQyjmfP4AopCUgtSB2IGV2DnWxhB5KkeIG3URT9v13dnLFADT5n
	lfTVifN0g4/2KTsy4dQ/ReIqMW4I128GrubaiQWkR4fApwNz+eamePaZQEiznUnOk7j
	brCWBhGz5pk/5T7rIR6hBlAX5q8Utj8l4Y4F/34Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644896785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gqXWlgg25t1f/8ZyC/Yp/FYxJE5mLWBVlPHvJcMMMMw=;
	b=OchhZQz6h/mxHwOB6Z3upenvpw5bk6bR96jqdVRcno+FeRlZqgeGpBAV+Pc9L2Bf
	JwOYZ0nPkO6LiCr9ehm/krvNtbkkvc3JBP3EhPZCi7zJ2aJeCmzucPEgz9DzCEBvJhX
	wJBXv7oFyJDp+kYEBzpgv3OsVqT0Y7efULM/MiMY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efb7d1177-6c7892e0-b87f-4656-b1d5-0a8b59b842f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8abd96ae74d6022287d6c95f8a187b5cebe6bc901fc2f2e5f8cca82676616a38
Date: Tue, 15 Feb 2022 03:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644896784
