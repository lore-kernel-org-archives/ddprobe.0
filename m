Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7889F1360
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 18:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645728085;
	h=To:Subject:From:Message-Id:Date;
	bh=YEagfWJG6L6GlSkPznze/dDXZDgXjHfGAempQMHqAd4=;
	b=kZJ3VgGRMGKNDT67vdFIcnG4U9rzp9UMY/oiglFKP1FWHBfMRskIikH7wKrwq37k
	wzLZHWVTk1UKv4pHQNTmvb9pjfWePRQmK4oJxYYCinLBQQ1C37xLrJZYIC5sEqUEP78
	rOtBqv/78NQsUA5VgBI8KkRbz+wIRlqnZ1wwUNqU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645728085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YEagfWJG6L6GlSkPznze/dDXZDgXjHfGAempQMHqAd4=;
	b=JYu6SImHRtobYm4W6a69hIcuTICkQVuXHNV2j3bt9ZZv24E0hNtKCiw0n0g+Ch1S
	zjhTqn+DL+UXHT8LRmhsMnoJxu6scx8SozTjwpgjNPsVuj2C/uxA3+fOZB8qCOvlecE
	YYydj0VL8og11aB0izGGIZ5QOiuFwQ9DVfJSeT30=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2d09b318-35e76af9-5883-403e-b808-65585e387f1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87f1fb30765e59eb79ce4eeb151d3eeba5737d49deacc74bccc8cb85df806db9
Date: Thu, 24 Feb 2022 18:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645728084
