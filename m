Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA1E2570
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 18:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649354458;
	h=To:Subject:From:Message-Id:Date;
	bh=CEuZ59+4rP5pAf2akBVQxxXM3ZDGhJz8kAo+eylfEhE=;
	b=T21i+MRJIPbaNpVJeQmGbx/a1NZUTVXFq+OKjzPA9IXVQaFekWmqztyiEsaF5hhF
	QUHxB5An5k6ZBt8mZX9y2EBIRU9BSNudFSDfIL0BbNemuZmnajv9GQh4Qc3GJTZ/Odm
	X9Sd3TNf6Ai/1msWpK4sybJU02G6T30ol0nDeg1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649354458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CEuZ59+4rP5pAf2akBVQxxXM3ZDGhJz8kAo+eylfEhE=;
	b=gsGam5c79MnPMPUY69ran/4e1qhwcLvrCNrLIFs0SQphPTjoTirkVMEIHmTfzg7b
	53JYAQsZlxO5D/cJHw4Zxhw7wtKuyaK6XT+H5OvZf498vLvWhI418659sFzmnNrB4wM
	CMyV3XbLnIFzX3j7+DPUBeNEwwOGwbank3StibEI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180052fc535-292a52bb-df52-4c06-8d0e-2d231a8ba28f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b1b32d48807fe38784b23de493db41becda13a2a260befe6c463a5d2f761444
Date: Thu, 7 Apr 2022 18:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649354458
