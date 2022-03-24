Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ADE71B93
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 09:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648115458;
	h=To:Subject:From:Message-Id:Date;
	bh=QnB9bRavn76lDJ1r/6yfrgs7UAiqvruU7iL2NcW7iag=;
	b=X3z0PXFuimbjpMF4wXtmHm9Pa5GG0WEER5FhVw/3oE2SKfT7EdRB+Z1QAXAlqMB5
	i+aN1Ybd2mmcqmYEyHx8kerJ02jgMwrHJ5LO86HWJyiGrgEDH7EzlxD7sUIvIR6oVJv
	U60ul+86AciEifcMtnSwHyIDQJtJd1WExek5+wO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648115458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QnB9bRavn76lDJ1r/6yfrgs7UAiqvruU7iL2NcW7iag=;
	b=FG9cXrVtcjsXqx9p1xmacEPltkGXRKDxtiyEaDVSAD+Q6l1IUYgekt64zUQ36W8K
	wC2npFJA8ZAlLQLZeqKvosHFF8wlvqrauPUZK6S3BxLAEcOihbHQu/vxncE1QigGAkp
	ElxXe0xxyFZvP3PRBFg62lMiP4couayT6EWlc31s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbb5620ab-3844eb0c-7163-4a7d-8f9d-0d1027971d8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1efeb87031c2e063a6ce996ac1b4d7dbbd2047618bfef86ad06f2e1e3a615b1c
Date: Thu, 24 Mar 2022 09:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648115458
