Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2AB2567
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 17:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650216418;
	h=To:Subject:From:Message-Id:Date;
	bh=PatJP7ClKfbMzcFYUMFS0UqxJPePB8Tu4oSNPNCRZQg=;
	b=OzJIuXjZnDGWjeE0QmDYja9LUWJ4P2XPcGdDbSyxEHaV6uwG8IxxujiTvlaD3G3U
	ojJrbA5JJIjX4BcEooLkKM9ztgZr3/S3fhbvPEh3cVn9pfDwEl5K3jJZqBzqeL0NHwO
	txxx7DjWOrmcjgS+jFLYsdJHp1SLQYcdU+yNwQDo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650216418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PatJP7ClKfbMzcFYUMFS0UqxJPePB8Tu4oSNPNCRZQg=;
	b=HPmyGidBI2Gjo41hofjEYxGkcmCjowDGKKlPjB56FVCXQA4IlX3OFscML5Iqqh+P
	8be03uBn1Pu4iR40da9iF1h0FuXOiMrlkZI/pKHzvGLDIt+NXaHdw0YJypJ1eJoKGkv
	LRs8TTfLivjyq12r5HNIyGRobMPWfn7SDYbhzQGE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018038903bfb-e7521afd-e6f1-418b-9e6e-b07cc405b8d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f584335f15cbfedf660c199201c0ae6bb1cf82705a76e16b20655fb5272ea71
Date: Sun, 17 Apr 2022 17:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650216418
