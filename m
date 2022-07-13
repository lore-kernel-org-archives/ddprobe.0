Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0871015AA
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 03:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657682212;
	h=To:Subject:From:Message-Id:Date;
	bh=+XxvwY0Oimr4klETCgu1nHTt1t+DU1p+Ser36Zw7jnI=;
	b=NxbsvG9f2nvBF+eWDGMtdAg3nllSPyz+cTkXyRcTtLvDqW4C2ni/y/weM/z3jQ+v
	1a508YM4GIwokn1D7BG+PpZw2Q0FJgD7WlZw64VOUYj9l5Wx4vHePfA2KaWHoI0z92t
	CALQhIvs3V7CiiHJYACn8zAoOmOIqBPGe/JmHrRM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657682212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+XxvwY0Oimr4klETCgu1nHTt1t+DU1p+Ser36Zw7jnI=;
	b=M2weiNOaI6UvgKS130vlEL+xsyLZsLJQg9y+dEIBYiX+wW1C5LPtByBapCtYg/fw
	NS5Q556mrLMFRsa/rnpEvmlNre/Swo1IPcFVRkcbhxdEXb0Gi2DNRwzdMlWQEKATpJL
	ZrNwMgXpQp213cTMzoJalhwQWWYu0RNYGklcVOQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f58f35a8-16e11e6e-b620-4297-bbf6-b32d8625e49a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43ef4b81247c3ebf2ada6715277417b04ea5ed2a6543aa39b8433a51dbddee67
Date: Wed, 13 Jul 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657682212
