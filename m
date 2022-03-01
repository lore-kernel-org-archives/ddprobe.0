Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861047A
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 01:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646097384;
	h=To:Subject:From:Message-Id:Date;
	bh=dcJe2/2+a8MKrezilfu/h4wbne6lrTpKn4zR3xt+fJU=;
	b=FvODQAP3EdOUMFxsG4b9W9s7yVMYmQHv2sbKinL9XnFb06s/v5lcP6YYayLyvoBL
	vVcJq29PH+KPyN6IOWy3TUiuoEOj7fcrtXDgzUrLQR5Enhr2pT3lrCT5/eSTRa0TjHe
	KbPePWC+gbee3Kw7AbAYu7mcZ7mUW5yPl77uMuxE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646097384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dcJe2/2+a8MKrezilfu/h4wbne6lrTpKn4zR3xt+fJU=;
	b=dgY1NEmO8h1g1MBhnNgyNLym/iZmDLV3ET8lrPo7vDrvUgZIlzcvmsd/coslyP29
	8I+dwX4pTXhSz6aChqXFhz9mH7aKScp9QtDZicN7ael4MVTy6ghQateVzPjo7sHYx6s
	zu2iNS1qEs5trTQrnC5+h9zQKFs1xrnXWrafYWB8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f430cc4f5-12ca9fb7-9fc4-43db-b000-1427fbc46424-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30d8782e3e845cfde5d83a7b0d890ba78be512317bb3cf3934104c8efd54e2c4
Date: Tue, 1 Mar 2022 01:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646097384
