Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85AFB23A0
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659154853;
	h=To:Subject:From:Message-Id:Date;
	bh=DojWzVmBvazafQ9NFnXk5+CI/GW3p1FhOhlKi30CLGA=;
	b=JKM6DVpyw6kOG1opq1pdCTGsuLyPYV2ntRmYLZ3jCD0fO9ey2H8MQH7/5sABqfsd
	zrjaOD+qrSphFfj19Z/m3ng1uZ+rDOuVbNo+gV+csLA3SojkNIBMk8Yh1BnX5Y6zCdY
	WEDUvagYa+6xZtPrTjdATrFIWr9NDaKQLVVoMWIE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659154853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DojWzVmBvazafQ9NFnXk5+CI/GW3p1FhOhlKi30CLGA=;
	b=X0tr609Y8FOJT9xur8hIaeXjnHvVCc4V5GT9e/rVvs3BrWCcBuBybHzsPzCMcL9v
	BcymiaU0Qs0a74qDhrlJElV2XC4+0ZS+8uQCd+/wKHg84++eIFlM7xWsDfStYTXqJnW
	D7QTm6o9ZluVJl1VhYP4VCtPNESO8VKpZxGxd8xw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824d55eaae-f5fe9998-f0e1-4998-91e6-05241696f80d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2728b675022a1e178fd7fd0708d432a80c79f05a78d9235ded80f55646aee88c
Date: Sat, 30 Jul 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659154852
