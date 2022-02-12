Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B727D
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 10:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644661842;
	h=To:Subject:From:Message-Id:Date;
	bh=Ws3xq6LJ2K4Tilfv9a3ZBesiEcv0/gSlIQTs+dHG/YI=;
	b=IBVZNFK3T93va6FxfqT0eZXLMqp1hGLNqeLlZMj8c3q9Vk/qGh63WgThOZXKRqUR
	MZkEfNh+99DDvETXvjrrv7RvgMNKmJxjM7cVwRwQ65U1an24LxNlgzr2xjbPZ9s2sYY
	kxylQNeb6exJD6B19o9RpiYyKxprthdn214B6bBw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644661842;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ws3xq6LJ2K4Tilfv9a3ZBesiEcv0/gSlIQTs+dHG/YI=;
	b=NMn4J8+SpVYhyITrUmoYrh44fR/r9FW1KzdtXE/kRATmQQh177Z3tWXh1E9eA0NT
	Myu92xw0O4Nmhtn7S6b39x+lWd7Jw/zE57UsxV0O0jDhOEkaKSUttX4z2v/8prdb2um
	Q13SRqIw/9Bc668pM2lLlNGH0emAHre1Wpt5cPN0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eed7c217a-f45e7af8-f2fe-497a-ac39-e8d94834d526-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae76a74e800116d727c90942b04af437055b1cdf6c94eea2344527d436e3fcab
Date: Sat, 12 Feb 2022 10:30:42 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644661842
