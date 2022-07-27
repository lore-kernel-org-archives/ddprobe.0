Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA77EC7
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658919653;
	h=To:Subject:From:Message-Id:Date;
	bh=OK9+3t3TEa3+u+nwGMUKc6DwmiXggejtkonof8Eb7GY=;
	b=CzXJv+2xSXzXSQ8aNGzjuTFvB8xMW3t0K9X0JJRFLK0OlOk2EhsaV8E4CsEaGY/N
	xIrWhejZ9/0IRRgrMatVCY2LQm8B9xaPmlq5AyUX6tESyXi0yZ+uVTcMM7jZE/s/otg
	LgHuSlZ4WkbtPux+7Z42OK4yMsnEdZLFalsReAJ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658919653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OK9+3t3TEa3+u+nwGMUKc6DwmiXggejtkonof8Eb7GY=;
	b=Wnkv9x4DTkqshDkJwlYOOtDSRZvjUMu5yq2tsohgUEOuoq3iKvCHUly1c/P+a2Mj
	wZvzQ2GR1nmymY2Ar8rBMVmKoxoz2D2dwfRjPjXOvD5erA4mgcPFubjjL3WrpDoW8YQ
	L4Fi5Gl4jxVPw75+PEJ6Jj4DGpVvJ7DpAY3NN/Gg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823f510cd2-36221b46-7059-47aa-a80c-48db43d34953-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de1e3a9d00a48539629d9b72f99475becb920867fde117dbb87304b57350e9c2
Date: Wed, 27 Jul 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658919652
