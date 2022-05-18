Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE3846A7
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 07:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652859419;
	h=To:Subject:From:Message-Id:Date;
	bh=l2HEDv9WxgEqmpBM9eIoo6dXVqAagBahPM1M6DBfJUE=;
	b=IMh8FH7lR1Gy/UaT6ayfO7oQL6Qzf6IWvg4irsMgaMrlNQjruwufNdEjMJ7ENZTz
	h1Vj4zu8M9mWeYF1fln0Egf+/lmqIZj9PL4fPWCja3xyNAH7867ZkHASmuN4JiWPeWz
	i0r27ZzbeBEyzox2QvkmlJ36SvwrRYY60JOlHOLc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652859419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l2HEDv9WxgEqmpBM9eIoo6dXVqAagBahPM1M6DBfJUE=;
	b=DSz7BTsW5B48RIfFihNNqaLg37bKqo7oAnZDI8BoyMg/NCHTCDXQnRsqS7hH5nCg
	NQJkcNNdNSVLDJiOxM6gMRq3SMDM0Mbsvb3Pg5tgXAVJNIV/3QeLT2PMdwIteTL4Hsd
	zlE3VK72zDoClR/LOYFpgjCmgE03CS6UjO+HYnH4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d6193aba-a347fc14-8988-4835-b1b0-e202b145a4c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d59f396e6c2b770ef7251eceb2a74cced5f75b9221377219ef40f9ce35c590c
Date: Wed, 18 May 2022 07:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652859419
