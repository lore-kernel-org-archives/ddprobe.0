Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F1B29AA
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 18:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651774318;
	h=To:Subject:From:Message-Id:Date;
	bh=Fm+cKtDJ5LyMUqBl96Khf3PxB2QBcFJ4qsYuS+wmAo0=;
	b=UW6d8wSDTowYpThkSdvCv0xJyLccym6dMZAmM+BqEd6mln2wOb72yDe5K2ERMpaq
	LgXf6diNXq0s85qyU9w5gDCxHLIfhutrUVjST70fclvTlgCgUBHdqNwZhl5LS8jD983
	6tgCoiFXnLReZsbu9ErudLYY5l+aWtzLNBkvAX7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651774318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fm+cKtDJ5LyMUqBl96Khf3PxB2QBcFJ4qsYuS+wmAo0=;
	b=ABEfqPWUQ14mGJ8zl+WkO+IO7e8VAq9av1Np/Ka7Z/tH6egmcHwCt6LQeoe3pmSY
	vvkxWxbRvWbPf5fmG8pREh081Mj1pwTJG8WnKduOGD7EywVllLGOekgIHghUsLUHy8C
	7rVEli9+F4Rl8xdjj/DPauuaJDA3dauq/VHxpeDo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180956be688-0c223531-be1c-46c5-a398-9c0202be6004-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ae22af7dcac7fa67c001b7e55fddede7e116f73df7a7013a638bedc16b2efbc
Date: Thu, 5 May 2022 18:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651774318
