Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C476F10EE
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646642184;
	h=To:Subject:From:Message-Id:Date;
	bh=Yi5fFEtc83Gl3iMPzpPsj4WKrC4po1D48q1/ODdX09A=;
	b=TO4ABBmrl/giVwHH1O6PY9h0oIRayyBHLyPE0PmC2SuvXCxVEFFcBEq87+w8g/im
	jOdzK5+4KFYwYkDt1lhi/M+KPYOdjM1DneONEjuqUvPkKM9g2sWDXMh76aKKo12u1Ro
	7AwcF2jHdTGOrJqljfZFYbNsSV5MWJQAb2v/neNU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646642184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yi5fFEtc83Gl3iMPzpPsj4WKrC4po1D48q1/ODdX09A=;
	b=QHeOiJSCjTA87TZCw5ZK7yM5Uaq0e99/2vk4hRJQOI2bJB0sQKkgJo2aS4CrAtyw
	1WD/EBXISdme59NbJ37hX0fzXGH1zjlrkb1i6yu2HAtxx3U0GAiF9AN+xIy3BPAeDQr
	FUTwZ8Ry/Ho+AiiG4SjjilqHwgliMrfbMZYRV0jA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6385c277-5a492c3b-ca73-4fc9-a5c3-d0d366f5b9c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5027169e8a6106ba2978e6c0791769a11f2e2c19d9fcab502e37a3212bc10c7f
Date: Mon, 7 Mar 2022 08:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646642184
