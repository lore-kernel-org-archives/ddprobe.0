Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D6120EC
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 03:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657078612;
	h=To:Subject:From:Message-Id:Date;
	bh=NzRbqIPozj8Gjcz0gBrFad6fTNGb77OgHssTr3HXjoA=;
	b=LbHtRx7dxxDbUBOoA4kNhwgsKNfZWTCjGbORI3wA1FKrhguVhvmIDeX1pUIKOLGJ
	DeMDpOPckmdhS2vh3r4aT0BTTaALas8P0M/KH0rZF3KkIqELQH3Fi1W5+GZCKWGu5AN
	OJGwJOFTsbF1quKUiIPwsQ+ZAfC4qvGweftXnqgg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657078612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NzRbqIPozj8Gjcz0gBrFad6fTNGb77OgHssTr3HXjoA=;
	b=KZXQRGrNlGwqxzTXjnHO/D68EitZpTWkWvFbs5ldsJ0SZeA3ed51yB/DyonmxObM
	oECfXQxQYuAVkrH4ff5yLwHCVChJnQ/BUSdNiS3oTnHip+9dYpyhKWsYcPCvX2Ga2st
	PbrSgMClSRj01khoEJPjqsLBHTkV8SKeORRyXX+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d1950153-0b289cdb-64ae-4032-854c-952e40634680-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cfff68d2d973744fa6dcaac56b999870039500d0631bf51283e99e97a7d45f4
Date: Wed, 6 Jul 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657078612
