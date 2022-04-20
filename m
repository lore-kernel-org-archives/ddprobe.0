Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039461866
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 19:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650484678;
	h=To:Subject:From:Message-Id:Date;
	bh=L5vz2ASWDru4TDYE66HnBbjona96O+wXJCC6BnXALgA=;
	b=XhfAHy023PRXI45NRFbwWnR4WSA7qMEC5QiFV9xbUCDC+JoCXyLhPtCIBXDgwDRo
	GV/X4i+ii+FgWA9QeoAzz30fyuvEKwsORhYb6WkjssYp5cKdxgC9NgOcfSJarTidQLe
	ufjuwRwaZ49K7CGxX3d/+WuNE+GjL7ZUPZR6dspw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650484678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L5vz2ASWDru4TDYE66HnBbjona96O+wXJCC6BnXALgA=;
	b=Za6u/kNczDifEqdH+Er0fCZf0JyCD9kDqYKCFGzmP10Js6OtNNKYNPovJM29ZkXA
	CupFa5/N99rSyU6nRE/rGpwnZpDBm6qjVisAlg+JBOAX0lxlRnhHzW4NzSGFM5Eq7D5
	lzMlvDg8eFYyZ8SMR6W0A/elEGIIHiZQdFvG/huo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180488d8e6d-6687437f-b8cb-428d-9039-2ec46a01660f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b98669e1d467dad046e9ba81e31a9f5d8c64d48fd18cc6a7f5e443229c22a42
Date: Wed, 20 Apr 2022 19:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650484678
