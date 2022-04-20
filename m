Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26301867
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 17:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650477298;
	h=To:Subject:From:Message-Id:Date;
	bh=NCHvSb+MbAHsZRJh9y6Jd3ogYO5+qKdMOhNHkVQdt88=;
	b=MWUjJohrD9/eW8Eoa3YosfsXkOYFJCZHL56XmHIDPDYnZoLnUQSJwcX7OcAnBsNI
	Tot2EXCEJ+QOVx1Y+cLqZ5OMQ2JdPe9EY0p5jA5KuTV/Y5kXc5HhshMDmDcDxQ2bmBd
	/pQXD1qrdH+C92mS4pCxXAgHw8iOFPgLbFKLFajA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650477298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NCHvSb+MbAHsZRJh9y6Jd3ogYO5+qKdMOhNHkVQdt88=;
	b=PMM3Yrw/qHMW60pQZhuFTg3NGxGamU7f3WJXVNWQI/FADoB2WToIyiwoa10MrGzh
	0CT9kw56p1ZO8gkS7ZvLCAMpL9NuJi0gravrTkmvY0tEQJlxpMRaAEE2NNEU7gPP2kC
	Oh01sIxGTy8i375iIrXsNNXLVzHqT0Abg6DLbF+0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180481cf26e-4c413197-3136-4bbf-a67e-cd28fd44b6b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b177ce252873e2bc5ab4c1d889392666a2bbe9098b00fca0a55eff8273ab8fb4
Date: Wed, 20 Apr 2022 17:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650477298
