Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDD57E2
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 06:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651817638;
	h=To:Subject:From:Message-Id:Date;
	bh=5EBWEp4QdKV5fb/r5IszXvcg4wr13RgGjqE9FGSxFdI=;
	b=Z9HWJGSGk+R6A28XydJHy++RAXQfE6OLDPUjD1yGaYRrdLdzXhhbqE12qPt5JKLV
	y8Hz4r3uyYwLvQem3xfp6QnZ4iRs82j2RuxRjQ49DfRBBo/DO5UR1cBnEfLoU2iHbgC
	UIGWQ3U5D4PcV76ezr0nOY91JKoeCdCQoYC1uCuc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651817638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5EBWEp4QdKV5fb/r5IszXvcg4wr13RgGjqE9FGSxFdI=;
	b=dgrmLYVDmQiWXstDex9d6Mjoslsgg/+dA+UrsQTJmcH+MgLaiqhNCqlThodwlLXG
	CrmbDpiUxFdu/tszoRMKcw6IzLQ4/uqoEIlFvrPNy4molT84xGu+uVweqCoJ/1Pn5mO
	A8Ei7C9JWSAmmY+XTZ8tG8MkQ0jUOApcsS7fIbHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809800e97c-6ef82b8b-4fd4-4425-8d1d-d983c0e2ae2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cc9a6c26d2bcfd37aa437c54461cd8d285c386bfa4c9faca9a97840d556c156
Date: Fri, 6 May 2022 06:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651817638
