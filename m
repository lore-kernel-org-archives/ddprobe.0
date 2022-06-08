Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B6E7B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 23:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654730639;
	h=To:Subject:From:Message-Id:Date;
	bh=2oVyNl/QO9rInfK9BXiuuh9/g+XkdQy1mTy9b04UqMo=;
	b=ShziRpJ6vDFWTuOLJSEmIpiYQxxvIMzvYoFdK5yOC4lULpY+M3eVq6ZJZXh5qCB3
	WRUleciTeqS1JALbA7WTXHtRRBeO7kbMj4Boi4/zTKY32170UXLeYNq8buHsWtR91Xv
	pL5JKEAQqgXjaX+a0Ei8TeiIMNV7FNfTFHQQemFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654730639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2oVyNl/QO9rInfK9BXiuuh9/g+XkdQy1mTy9b04UqMo=;
	b=jnucyrQmqoT7Nm/HjhwBGzuirEG74kkdSUxxgHOwRkT1L1gcr+ZW2r1GTSdkgHPb
	OBAdpLO4+aPluV9JYG5KPQ59j8uC/jRydIf/R5+45GTSkHL92QMSu0ygn0ze2trh9yO
	JR4Y9VsA1h1a1XzvODc4x/P3BS24EJGoovVnWkBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018145a1c7fc-58f187fb-707e-49d9-8935-670d0d3639d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67d4d0b8d34584f38840ac22a30544b82bea832393ff4650e1ccacb20e2f2089
Date: Wed, 8 Jun 2022 23:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654730639
