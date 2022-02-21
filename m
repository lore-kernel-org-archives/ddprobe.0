Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B79020E7
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645416086;
	h=To:Subject:From:Message-Id:Date;
	bh=rOaIAc/rsX+hEmIio258gmEJu/gj1N9kfOsH5IPJVWY=;
	b=FukgffALBIHX19co+CTqOhcbFF5lDKh4ViyyM8AR4227KiQbnIkicAns89wxD/ll
	qtgb4ypvxn7ctAr2NiBcRAYJwBNkHU45Ny9IS92Xs9zr6A7gFK+T1gKyVXI+5L30DIX
	sdxKQfKxV7BdygWGCAHaa3Q6UvLSDRw6OA7Zpm74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645416086;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rOaIAc/rsX+hEmIio258gmEJu/gj1N9kfOsH5IPJVWY=;
	b=cLZhwrDG8zKk3xivlOdhLgA6sSi5bQX9iavWbppTYkhjWR7+DTh7dyTsfAX/KCzG
	28W+dnuL8BsPmybo/zz3F6SzLSzM4c6RB/5Z4WS3e6vGwuoelsodtAvHO9XW4Hu5YnA
	5CaDywKcqqI9D/Mao9BPPz1s0zUzMlmSMpFK8Le8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1a70f4ed-d10ef14a-4549-4507-b19e-011d0d7cd2a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e7f85be0f085ddf781f16070fea496625cf049322ae104b375437ca1a1a7bca
Date: Mon, 21 Feb 2022 04:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645416084
