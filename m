Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA9A7E
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 05:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652072818;
	h=To:Subject:From:Message-Id:Date;
	bh=r3qEF7lB9oyZ+wREFd/hqHkJmkOxBrLJs3eo7UsqWxs=;
	b=h4cTLta6IdN8/ChAB6R3jSNBPiulhfG43cSCgmn78rV/5Ckx1+gV33vzS0+PnEF5
	0puvCcGLlGjEkwlkM9qpZ069prZNIEpwa1tgBODUFXatk70rIQCxYu+IT1HTQLCwvIz
	vuRx8o2ZU8/ws/0Nalsl1iEvNvnju4+etcoBi9oo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652072818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r3qEF7lB9oyZ+wREFd/hqHkJmkOxBrLJs3eo7UsqWxs=;
	b=Xri7yt/rmqL2U4nnXgEu9CuGPNj2+vtFgPFwA+yX0oS98ZIcjN3/tszZuEP3B7NA
	H7Zrsm8HYS6D2ukzKwNjA1WVRvuUQniI80G4lAKTdigZCNjF1iI2Y26pYYw7iQ/5FT4
	6aB0EHYmdt55Pn4anTOmfntMhCP2oX/pmZ0Lbl0o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a736a65f-0f6b841f-b170-4c80-b931-d789ecd2b4b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f5776933133beae53826fbc5058b1cfd39c3505f5c50a31533399484ffb718d
Date: Mon, 9 May 2022 05:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652072818
