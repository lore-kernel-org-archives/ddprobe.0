Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96544627
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 01:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644802226;
	h=To:Subject:From:Message-Id:Date;
	bh=VzTra0FAQ6K5mClIP/Ch2Fg1ph5S16NbdqylA9BxOkg=;
	b=HcrdOqoYGuFE3FGtxsFHo1p2GqWMnKcCdEGim971VoV7Xv74mLBkxx0TJ8EKCgoS
	D8o9mTrupxNBPYKHxutaWfedQ60OFmcdj443WAwHmkRwiLOv5HK1UGv6Jtdpz8jVJ9i
	+gfcyveVisxco7/xcxPtNiq9ObHO/d8PDErt1DaM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644802226;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VzTra0FAQ6K5mClIP/Ch2Fg1ph5S16NbdqylA9BxOkg=;
	b=gms9pdE+QCF/UUmZ37QAyYONZ0/fI1Jg3fZZpypGxtXZ/WrVUYnXxX5b9/cMgPdp
	lohkEjY7kWnkiMYLWv3Q94Nm5CBgBl0d6rbfQulo5UyYMw4L3K6XQ/RzNNr9DyL/p43
	dPKZOvV8ItmZT+ov3lYK341CFdQ6xabJWryl9gUU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef5da377a-eea18db6-096e-4696-8533-896fb443f3d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d1e67f5f5e2cb296ba35096111dd173141eba5b0d11175371bce5162215bb12
Date: Mon, 14 Feb 2022 01:30:26 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644802225
