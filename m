Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B23E15BE
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 03:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649993458;
	h=To:Subject:From:Message-Id:Date;
	bh=IJfpSh2v2KT1s2NDXMnDw5GyuMvnMWUUN2uo7cs6mOY=;
	b=b9LnLkxi7DqapdaBLvK6DG/NOyh8OlXGTi0crHtSC+GOnvGtyBjJ8cd3IAeF+h9f
	ioI/3U0AZJ77A49NJOBWRsQJ52ymF3mo9Bulr+q2l92KW7IS/7u7h/s3x/etYyHpDTr
	EELMmpNamEKwmdt6Fm7hi7SM496T6KIrB36K+3p4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649993458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IJfpSh2v2KT1s2NDXMnDw5GyuMvnMWUUN2uo7cs6mOY=;
	b=h9AWWPN5xee5UmI5DVdL6t3UiehiEnmi9ZFek2IBdXKV0RCaQg23cN2wLhxU8i1a
	a+IWNge13BVY5UZ3+D28PB+5JDdh6+eTyvLFZIu3YzUP8lO+HSsnvpFO6LEEP7iOc4N
	/mFJY4HPW18MkZQbPbwxDE8CYyi5oNP1HOhyM1Gs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802b46228d-2ba357d4-3fa8-4b71-8428-c8d4a05e8f74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d4f0f88e7a6ca145ddad5af204c7a10e698d558a2002f6bdaff09399ec2736f
Date: Fri, 15 Apr 2022 03:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649993458
