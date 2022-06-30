Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68BAFA4A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 06:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656569812;
	h=To:Subject:From:Message-Id:Date;
	bh=aRVfVtYWce0cboVvLSTAZ3Unnllc5AUxEyRyzds9F7w=;
	b=GsVBGQ2J7J0rBt7edsol3kPVIXVUzPijiX7uSuKYRPzAz1WbZnn+PSpaer0y2GdR
	71oYMOjad4HUsI2mVoKldjKC9S65pXiwGou/SJ/mxBYIADAzlw0qVIxpIEGZjm7pm5u
	O4kA4CQStNXkPyMNbfhr6kOVBj22qXfUGQiTfPoM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656569812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aRVfVtYWce0cboVvLSTAZ3Unnllc5AUxEyRyzds9F7w=;
	b=Gyl+QFn/iN+z89WVezffQJt7SwcEH4d8ZF5BGkARheDCwH/JzW5VN+kzB72Qu1R2
	tjd5ci92nJRBB8f63Ce7Ucv2EEtq3qCRPyqakomoLqDTGgxJ8do+JwdPNYDwLx9OLRx
	dqmLAA79/bVVt+tfqXCBUj4nlqwULQ8yvQU1R8s4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b3415534-a4518fc8-5fa5-4b04-b51b-d2ddf8f124bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a864d97c3bd20fa8c56cdedc63b41fa855aeda43b994c847aaf617424891015
Date: Thu, 30 Jun 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656569812
