Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280F62F34
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 21:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657056412;
	h=To:Subject:From:Message-Id:Date;
	bh=KpeQi4s+mY8ZyRMteoKTV9LAMTI0aLsSBXQ7tcN5M0Y=;
	b=WEIqOycaFff4FArWJsMYWBAYM4EynU9czFhOy9qbWUgJyfYfsZvOehA3SiVbwU6N
	TC1E7rRhwvCBufGfdCMyfjF5zTWQdvqbBqQWJRp0Zv6jie8uYI4r9+HLJEZ9TOFG0Wm
	Dcvl9WG02xq3bofKBbr5ecw8Q81XS7Ys6Cgv2Gng=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657056412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KpeQi4s+mY8ZyRMteoKTV9LAMTI0aLsSBXQ7tcN5M0Y=;
	b=i5pve0+ykelFKfslEYgVv+fnYSOJHWmmSJpftWoTKzXKF94cfHZq1/WCLRCMtC4d
	iUyy2T4ERA2qQyHuKQ6C87e/5gJx0a4O+TZrBKXJE4zNtYnUYOaSMCARUG/hMClKm26
	75X8AZyYfH7lo+f+0GREifCXFKsneViicV6U4k1Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d04242d8-9786dfc7-e125-4bbf-ac18-0f79f4c9adcc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92aa17648f5fe7c5eb8ddc9d5c1171899c5914b3f26c4e0f6978c1c19413f41e
Date: Tue, 5 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657056412
