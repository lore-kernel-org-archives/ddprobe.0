Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E4A602F
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 17:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658338612;
	h=To:Subject:From:Message-Id:Date;
	bh=+UVECPK3yHtpT7uy27IH1NQeLfYD/Y7fbj+RHk8hAck=;
	b=BI4Ni4id0SQrLmsk/8izyV2zaE3VqGDShpJnmPUJuXGl6UnRjn5f/ATpVNOxeMrW
	bKoHepQ9ZKKJkTFLEHN4QJDVG18NpTALwk+FGv5DcQt5j2c1rUODxW/hW3sJ9s1KO9R
	rAJS1YwcxJReqYyOLaVpbrQO/v4U5S4nwEwbssi4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658338612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+UVECPK3yHtpT7uy27IH1NQeLfYD/Y7fbj+RHk8hAck=;
	b=fS4GM2A97aAUXWAPjBXjiyr69ZUtCDGRGjl9w781JoGnyApgYyaMeftUxLSHBtP+
	pin2sfWEw56ssIA0Ih0bBu6HGhhNqC9aKKNJhSnlzAqD3DnGAVpMmpCUbbUUU5RHUf4
	amFzxztgYdvGLPfrbX4A4/2lJRKWjJvP8KxsUTJA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821caf1439-9e521ff8-9d0d-4f0b-8bf0-79676d8560ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7b457cb6cc0b6e6fb88864b5d1f7c0e412bca9a67b96384c2f669a04ddb9ed3
Date: Wed, 20 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658338612
