Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B8F2919
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 16:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645115485;
	h=To:Subject:From:Message-Id:Date;
	bh=877LiI56IpSVBoHgvD9d5JfsocCpRjQ2FjJpeK5DDwM=;
	b=OLy2HoiRZpRzYeJvMlhF8q0RD3cBNTLM9sjcpVyweQ7OlWHoc5WBreQmYw1d624I
	nZD4zRgoswuWHBs8evPUSy4lwRKpi/pFcY0mHbXggJG/gBG8w0ObwlXEvcz7cfeZ7zg
	oVRnjak9QoasG5emTj3rLZTLcexdMsW4WdfM2QyI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645115485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=877LiI56IpSVBoHgvD9d5JfsocCpRjQ2FjJpeK5DDwM=;
	b=dqrRVfz7/JVdp+OkY2AvoJggjnwKQt+4Pm3SbuXWioPnxHJsIT9Y3xH3iX4m0XV2
	sQf7QyMJlaPK2eNbdPYqlFj1CD+tySsubDvG5PlUqzn2GRL6nPdk3bdNUycE/vlTHXs
	T2yL+2vjS7cFGcHsbMREKF1uIPYsrsbjjeJArKgc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f08862a4f-7eb99c54-6648-4b16-9cfc-40fded9cb5bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df449a0bcb0f2edb3a12a99a92760ddd2ce004a5c66e4cc4a993ec4847c83a43
Date: Thu, 17 Feb 2022 16:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645115484
