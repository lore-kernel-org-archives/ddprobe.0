Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A568623BE
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645002085;
	h=To:Subject:From:Message-Id:Date;
	bh=nnkn6lzgIzVS5j0SihukFxWZ6UFCl7EZpz7n8HSRsmo=;
	b=aMmXXmLnGCDiHXUfCbkBPw4vaA2FQvXzLEEM2WRqJaBTW6KR6FRM8Utnsl13YmS6
	bLeXGaqJoCNEMNamLQs+xGdVvEMGF/K4PtCqmCnRoKiEN0BqX5WBVII4wgAXh8XLZXh
	qfbexOtzDbQXl1/tQPLQLJgWyKk6Vh3QcK40Goow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645002085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nnkn6lzgIzVS5j0SihukFxWZ6UFCl7EZpz7n8HSRsmo=;
	b=XbDCX0kvo9J2orOzUEGwK5/Y3rCNUS7gMiK/J3k4mH/gaDf03tVADzGjGhOvMbix
	+iX0YFsxEUeUCeP/LuGX597OWAGl+kjt8GQhIHHGvLW+WFuA/wRhFVwoaKV/6hzwnkG
	a7MSnSQc91SqLmXlYipWnaHzrZRizdEfMqLnpkCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f01c3d184-9db72f5a-dfe9-49fc-a860-2533f275c73f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c52357712c091567b5f6be96487457fd38d4a43b8f30dff05e9b5e8a27370f2f
Date: Wed, 16 Feb 2022 09:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645002084
