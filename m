Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6A79647A
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 04:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646798485;
	h=To:Subject:From:Message-Id:Date;
	bh=23IZ9beh74ZM3FqzxkK3BJOUwxqgKEJm2V4Vor6sceU=;
	b=XoOPmbNPll0cF+C0qjYN+hFJwA7tqdHiucA4t8X52JdtgcFOOcbukNWoCy7ZRwTm
	psCv/QIjzoV13sqq14zBnPs249JFU3GQSHSn2jNGIpdYPx+fTI46xmzr4MNLpqzSHzc
	IwIaUj+dt8j1yuAgxtTRBC5WHnyY7KWTeiq+Vmws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646798485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=23IZ9beh74ZM3FqzxkK3BJOUwxqgKEJm2V4Vor6sceU=;
	b=Vxzl+x86rRy7FjaB8e8IHlLCA1bvc4FXkJwChVfbsWLYC2EAsBtLGn/c57qk+hAE
	9yNeNPpbGEGpVUxA15DEGsHUDql5TkpEKOi9iPTJdntJtuqOTSCZrBz2t3odf+5V4SF
	Q8OoHnNzS6norDM4QB3aFxkaay+1YHXD7TIEhwo8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6cd6b4fa-a37f01b1-0c15-4531-a567-a930bdc22a77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9f4010e7cf6009b85be00ca91318064d55a0a445e361b0bb17d399585be7fa4
Date: Wed, 9 Mar 2022 04:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646798484
