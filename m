Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5693328F6
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659274252;
	h=To:Subject:From:Message-Id:Date;
	bh=oWLL6623Xsev2zmyjBbor6BU1tIvnWqmCK4gFbQ+b2M=;
	b=WM8VIi8ZL2dj4lT2bEarAhtPsJWujn/YcOHfw+GUP//hJ0eji0zUfLIWWCvzn0Bz
	GLqW3RqksY0yzVSy22Dqh6gZoQ33RsEEKFEJ9BI9MEASYA4K1HHkaK/pyooSlFt6Te5
	GMJSpKrlteX0S4hGtjiPVbN/N3i/4a2FiweF1XMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659274252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oWLL6623Xsev2zmyjBbor6BU1tIvnWqmCK4gFbQ+b2M=;
	b=ZKPkQeONa1qr8YUTVKLbZF8h3P1Wp9UiI552h03M9bS92OnqUkpZkyGTapXBOhOX
	Q66bSLUALuTJuTxobsHntH3hg1kS3tlzUVzJ2zp7FOs0Wbx1LmXCzlmarUV3/6YgxH1
	yA9XvS2QIQz571kBqmhBnScTUllyTOr348VHYiVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825473d0fb-658abe7d-3c5c-405a-9dbf-994288bb7234-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 402d4ae2a7e1a9d6298480cbeb7a29acd1a1e8905913c2d83ec462c12fd082e0
Date: Sun, 31 Jul 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659274252
