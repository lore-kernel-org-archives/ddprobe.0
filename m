Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FA02F5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 09:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647422484;
	h=To:Subject:From:Message-Id:Date;
	bh=TVq2Qo7TjHrw6pXGzLiVjGiLsLwcFU8M6erbFRoW8t8=;
	b=F+1EE7uZoMsdpz0JD1gHS5KwKt+6MdUcVV9JwREODT/htW4fbKvPvDbhlM2Mcqum
	MMcp5EhWX7B17GfUpamPEXb3EMWdlxBzi6Qa1z7L8euk1SNPWy5dQ7zBWHAUind++XY
	iLPtfrv0TRGo04NQqalGWabjEQMg5bWBWWYz5E2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647422484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TVq2Qo7TjHrw6pXGzLiVjGiLsLwcFU8M6erbFRoW8t8=;
	b=MtJr1lZlAkUK3ZGZmZqpVMT6Ib/4O+mLrIWyul8CC1jyIDtrMjyT0qTfMRoCFfBY
	o97BpqREq9H2f2uoqbPyV5x2hCwEEOoYlI7AksPrZBrgN3ex/pb63gJD6UbzT8eEZmI
	wSLDdImxV3RqyyPwzYPJUBbySwxtp6/QbpTdjaX4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f92083117-f78fdf83-2c38-4dbc-a4f6-df5e9b95124b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d597a3fbda3d3b40ff9e8797e4c5d2852789e2da4ed7a127ab16193c0574db4f
Date: Wed, 16 Mar 2022 09:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647422484
