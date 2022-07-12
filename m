Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BD0423A7
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 06:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657608412;
	h=To:Subject:From:Message-Id:Date;
	bh=3H/0+H3naf8MFerLJOoKoIcldg6mopB4Qt8/6Z8d2Qw=;
	b=P6MpARfMOfKKMwoQVMz4kBzGKxk1uQqG0NLF+xrtQYUK+6ObkwB85+1Mn+mR64ju
	j7ppm8vsC7InAh2tOKQyTixppyvIJoeNab8tN0lkaZ1PB6Ke6pBwdye5qxsczlVArn5
	wqhQXc4WFx3FSKITAaGEt7vvY5ii/+h5/BiiiAu4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657608412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3H/0+H3naf8MFerLJOoKoIcldg6mopB4Qt8/6Z8d2Qw=;
	b=KkWWsJvspEuFmVWiCd1awPprxKvXe0MGxoguH/rcMLZ5ITlnu3PEO6PQS1kmMCMf
	JYics1RaYF8mqQzCm2GlbkS1hSugw9X0Ks+7HNT1dieUCe8QEQLLXq2kf+Kg+E7INkj
	ugsU3RzaL2Gyr49iWm/pCww1GdVHwYZxo5ZCk7G0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f1291c9d-2d589367-d47d-443b-846e-9677eaa5ae70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d74643c9fa4a91cbf71b2d0e09bcd3e622cf1271a470a51f3f3fe9da5c637bb
Date: Tue, 12 Jul 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657608412
