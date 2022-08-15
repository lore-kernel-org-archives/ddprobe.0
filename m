Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A4FD7E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660552852;
	h=To:Subject:From:Message-Id:Date;
	bh=ZhnrGQWF85HQlpzbOdA9gA7yx3E1oAm6t+0tknIVr8I=;
	b=I4W9xRxW/VphdGOgWGPevuvqdMXhan7+5F7bBZh32iSA12MxxKr6gIcZP2lGk3hy
	fijSBzOa7S0wmeQn42CwSvM+X+/9eeJSp1fDF6q16YPh/wAjggE7kfsIj7IYZ3HlqYv
	EyliBt5+iEGpQfJMmm/4vS8GcGY0LoDOOKC8Uohw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660552852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZhnrGQWF85HQlpzbOdA9gA7yx3E1oAm6t+0tknIVr8I=;
	b=ap/1CeiAC4Z+ILmMK7e4HOyVoVuUzXrdcKHNWVTP690rw8/kiYzCZHsp38BSo1JA
	2kqPCwCibdPVJv++r1niewur9AGPerKAQjz+BbDqcp38uSAazc5Wd/9dvkxekONb3D+
	+sLwu33ZY8/E15DlzE/jehMcCzImP58s7b+MnR4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a0a9b464-ed4dcabd-91c0-4371-a22a-c7ea7deb14de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0060acb662e3d0146ca8cfdbb04d82c44e3578ba4018873d9f348e13b05e940
Date: Mon, 15 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660552852
