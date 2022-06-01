Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA13D366
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 05:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654061759;
	h=To:Subject:From:Message-Id:Date;
	bh=gNx2F8G++bps4BQhGsnUmFsi5Wir+o5ZKTlYC+GNaj4=;
	b=ldDEMyh0WI2z3q3ua/LntsxSn7lWxycauxPjCtP2FlMHi+N1+cYNdz36Pstc+FNX
	ZKYS/3ZgTupZDrO0hqwncGeplQKedg4lcaOySAVqcQiEUOdgAJUrLVzWN2Z5EF4M5vO
	biCmnlYsDwPMZZZ6nkzELFvJdpbnwM+uPfg9iyQ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654061759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gNx2F8G++bps4BQhGsnUmFsi5Wir+o5ZKTlYC+GNaj4=;
	b=A/Uk7gQ02jKKWlb8wnpEKJu41TOnImebdOxpx7KTBHQbppCs4I1zmRkQ8gKFJHm/
	gOT2YMqSCpPSdLyKcO62b2GCbI6Os/nKJX0sCMaljNGqac/IHUJB2Bockivej+T0Sj9
	WZivoFVl2iGzlkHZ1JsN9XdWU1qCbj9yVHrfGBRo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811dc37b0d-5cb7d07d-1208-44cc-a653-472032f621d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a58597440e87a54581eb69920dca7055548bea557396114dd349cdb362e88e24
Date: Wed, 1 Jun 2022 05:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654061759
