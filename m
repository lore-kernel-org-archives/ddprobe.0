Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70EE8320F
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646032284;
	h=To:Subject:From:Message-Id:Date;
	bh=MFYMg3DjRA5k4WUBHA1XVg5LzKXu4rXq2E5rUcvHL/I=;
	b=i4/pGAv5/75aaPTui72y7rvCmTbZS+XKN5ohK/F8KWWxCUQcLtvbPcW9y3GxUevp
	s/Dr0NMHCrF61piTZHXiOqxeHt0mMas3kkc5z6dKBGFvX6ZfqcUyUqq7sSgwimixhCy
	1n5MFAv2/gCa7Ha/IGhpzsDuz1K1OG0eHip90JCI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646032284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MFYMg3DjRA5k4WUBHA1XVg5LzKXu4rXq2E5rUcvHL/I=;
	b=D+3Uu0CSI6zG1PAUbN/xRqDaGP1t7jJqgG76ZLxyFdsM027awcyqIdUVI/OPJa+r
	n5E+PzpfLo5UzjCIUHM6T0BJ5T7dBypuYBTFXbll1o5pf6/QHaDcfV9sxwvTa1+Ar+g
	6B+of+51Jry9O7AuuxFbL+OKG2oYBXOsxykB3qms=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3f2b6c4c-5300c5e0-3cc2-41a3-a2a8-5957508c8624-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 355bd6aae7968430670de9c5696b2c6c70abedf41c9f68715786985522786527
Date: Mon, 28 Feb 2022 07:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646032284
