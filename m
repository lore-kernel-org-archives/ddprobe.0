Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7E67C
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 06:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645942584;
	h=To:Subject:From:Message-Id:Date;
	bh=zhejGmNjEG0ZnMpk4hyvL16gZAtGauUYADr9ys5pqzU=;
	b=QIp8Ytc97evZHpq+x29sUSnSMTtl7ioWyK/bhgCZrSXWCviuI83W7Nv0HUk69/Qf
	xANadjDvKm4Di7iiObf7FwAKlxkjJokqiX1shcWhNwwFHa6qzIoL735ll8+eoDeA0Jt
	yr67QA/opxSMaxxx8eB6ULR6cU518ZkcG8+G2uvc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645942584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zhejGmNjEG0ZnMpk4hyvL16gZAtGauUYADr9ys5pqzU=;
	b=jCGfRRwIEO0shIDdTSgFCS5C1whi2AkhmGoXCO589Xf3v+GIveXImWHUG3JFVhoq
	ypxFT8IVVAHqm4EZPK5FHKV6Xh8oBYTu6HuLUAnWp7UA8HzBk8/bpqd5xJdzxUIny20
	pGWM6ncPFv1SpE6IDj1Q7ewXS+tJcI5wtx0aL8+8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39d2b5ce-5adb045b-3b8e-47f4-977a-d5da7db562bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b7ddd4c0942db8ca34095b9a490031e25bb5ecb73f1c47b5660fb1af9793af7
Date: Sun, 27 Feb 2022 06:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645942584
