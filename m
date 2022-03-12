Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83FA42F26
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 17:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647105685;
	h=To:Subject:From:Message-Id:Date;
	bh=3PXtJ5HuswpyuM52shd3hTZAbWbmw4NdALabfXcINnU=;
	b=ObtH+deTj/qM3DytNfiJh9nYGHP/32V5Iz3TTLp40RrOB3WNtY/pYv62551e7gLH
	k9HFYXMWq9UtavtxPa3wcuQUxQ3k3xhTczAZ07t44nMjMklX1NpSXKXZjxT6QLLjbYu
	mxOgMG/U3DLyuWVwLpXx0x6JMPBtX7aNHQFDhhsE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647105685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3PXtJ5HuswpyuM52shd3hTZAbWbmw4NdALabfXcINnU=;
	b=ReLq53OYRpLZNOEWg6tNc7+eZriVJNVa1Dtd2jGnbLx6L+DvHxXYJQN3/mUKd0mG
	PsikEOPeSfJrjwiCmUzXIy5VXF/gr0PtipIO2D48pTnJr6coyxFVVHzGY81CjAAjJ9V
	p8KPvoqTW3WpXpoeXABmYy7ABd5rX2D63WReu/2Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f2634f3-df4454a2-0dc3-4420-b599-5e4d6130f2d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14c39ffe8aa2d2278fd369c1a49076885b484471e2a6594ddc2242dc2fa578fd
Date: Sat, 12 Mar 2022 17:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647105684
