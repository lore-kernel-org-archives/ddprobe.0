Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD6E2F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 09:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645952784;
	h=To:Subject:From:Message-Id:Date;
	bh=vbMLgq3iQgokB9a/dZU+CO9MZR4oDkt6UJXlLf8ANmc=;
	b=IBP2iR6UqeJVJ29i9Rwe42yecc0fyO5QV0HvRIa/Ngi3GNWDBkNTl1I1IZAZeQtt
	45VkTJ8jB6PQ79sTLlnEJrq4IZzwqfubPhYqW1qyRToWXmRgDpXPeBnZJjfr/gRgocL
	hYEck3IVkCq3mrn9EZ9a4gHnDPt0foWJnYZBzr04=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645952784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vbMLgq3iQgokB9a/dZU+CO9MZR4oDkt6UJXlLf8ANmc=;
	b=JBmhntJBw5zBvOE80/KnIxaX6YjTbVYRfLzdP9wdWcIKpk21X/+hdGNHBCp265Uw
	cBG4eBDnA6syUonbYiQQkx3FUkm0bLWWLy5G6al55j//OpOVyj8OQS+NTQE6w+F15YU
	DyJztGlL7Wd0QjELjXB4gQKoBqWiBZl7VKNqzNyo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a6e5980-68748441-eaa8-46a3-9f05-7bb3e509932d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 990a8a36905b638e7cad23b55a63ccffbdca27aadcb7998b5bad2a8066355f77
Date: Sun, 27 Feb 2022 09:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645952784
