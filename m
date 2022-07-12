Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408847A
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 08:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657615012;
	h=To:Subject:From:Message-Id:Date;
	bh=0CWhW6Ke5Y3sTm+g15lJmmKFgZEmpyZl5f4EQKOyf2I=;
	b=jewnon0qLaHFr72kgX5eWUmHocMoVmNOGnBmtVL5UhiLCcdqQzabbMfPAAhOi5Ug
	Qfl7naE53FueZdNbyc2eimajKeX3KOuYk6DN36x4wCV2aVTvEbH8KfTHtDG+DSjrO+v
	2L1N4m8JxEGAsBHsaQSsT157n9T22f4dc9w+Bjz8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657615012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0CWhW6Ke5Y3sTm+g15lJmmKFgZEmpyZl5f4EQKOyf2I=;
	b=iAjWaz2XD0iE24Rw0SzrpqsqZlhGLsTHncAJPcAMyUrKzhfc1oIixy6Loaf1WDyc
	rQtYhWUIPea3exjjbWoMW+x03yOasr1186n0x89XqgspTWOx6cLyct5c94S8+kwZMwW
	CBpEFlb1Xpo97EOn14E1Eon8AKx8yE1NYEFoLQgI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f18dd25b-3bdf5c95-b94e-48ac-848f-9fc973afa44c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0d836e8fce75d2f18508a007fe805581f952356e52dd2c0f0182fad45ab3bdf
Date: Tue, 12 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657615012
