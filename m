Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C898B7D
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644827453;
	h=To:Subject:From:Message-Id:Date;
	bh=YV9WdfjORZd2NOJGLx9WRN7YTCEtuhWGwdQ3Bep/nno=;
	b=bCwFyckDGSWvNyhaTwD/FkgQSFvmQppWgkd5f1zsB5kxdVHO4mG3jW6BK1GnbAb6
	aIVEobp4Jo04Z/rWLRyfDJZWLm9JoB0++w2t36iiuf5DdsIim4RcwNIx077mKKNePpp
	PtsxquAChu6ze83aTvg/iwU5J2WZtN7mYBs4wPqw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644827453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YV9WdfjORZd2NOJGLx9WRN7YTCEtuhWGwdQ3Bep/nno=;
	b=gScCPWvOh/3hjDQ4zGaLFT4pjMRRPPzs+uIOW473zSvkRefD3FyjvvCYbMpVIXq4
	GTzeXfk0ddSQfWiGo6h9ZooR0N6cepEpqhlBWmQ4iJIbrFHdBsS1g6rneGHmaDQY9KL
	X0g0hoe0+3h3x+2GvFBL3l2tARcfA4hhIYS7VpaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef75b2673-7b5cec7b-0340-4913-9f51-5bb6766e38f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9ff8a674a9902728ede2a019cadb631f8476988371fedc2d1db1f2c9269dcd8
Date: Mon, 14 Feb 2022 08:30:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644827452
