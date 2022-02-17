Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8BDE28E1
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 09:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645089685;
	h=To:Subject:From:Message-Id:Date;
	bh=y05PlwqmHI0gHhw/OuUTIllLC+xEXdGeVCWFCDtSU3g=;
	b=aSLWnMPtZal2lj42DtGB3dGgzqjBM/0ULtETy8J8XPIAtXhCzgN1VnCTeV6BC+kT
	fj0dEj0JJqdaO0mPd7VTSQmqoziZv5v7MbCeKB3LYp/lHmmxQR93PQ+2dA9VN/s/Bpu
	AVkxaoMA/1Jn9p9Lw/1FvI1yJhGd53fO6qODm84g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645089685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y05PlwqmHI0gHhw/OuUTIllLC+xEXdGeVCWFCDtSU3g=;
	b=LkjwviUE5ox/O7xrdv6hPN+Fyw+XyTR8eGyNXKY8ER2lggL7ljju0ZfUEzFto+v9
	c9m2I7RFgVsaGHB5fxjsOalMFjPbnKK5x0HyPQukH01JnsP8ETysasG01bdF3ELja7C
	rg9zBo57DAMpyVoV+jbm03VGrISHDo9ZXNk/cHWo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f06fc7cf4-4644c173-b579-4ae6-b72b-d1dc6d95624c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3ed448470c10848542c5f8ec237ca869d82890a3ebeaf315fedaa70b0411908
Date: Thu, 17 Feb 2022 09:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645089684
