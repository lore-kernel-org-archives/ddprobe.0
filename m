Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43960A21
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 15:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653405959;
	h=To:Subject:From:Message-Id:Date;
	bh=5ZBiYDdtVk0HPyAPkRJW1qi2y6/inCR3gtzD7lz2l8k=;
	b=Jqgb6X0RzVW39ceptAzWhRXixwcQkC5DHtBCQvDUllNqD27sYuQXCo6H5/apSj3n
	Ir11ek21qux/LZCYtIQmGIAuIURvENlic3JczCsvV4Tne5haR/m0tsFA+1dz+FFgWOT
	TwKGZS9nReW6X3dwMogcgTwrBQjYxP4sRhbEy1qk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653405959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5ZBiYDdtVk0HPyAPkRJW1qi2y6/inCR3gtzD7lz2l8k=;
	b=bya/Ib2p8ZLsCEsc6w1iZtC1wExaUHUp2HtiTn1OvqPr8HD/P/kaOlmCVU9sGzno
	un8O17Brnxf9a7oGjK70OBs23TK7XaTlCwUpve4dQHf0g/ytpl1TPGpmiGStDAsTXxf
	AkYB62I29kNgwl+uwJtJ247OTGm2dgatmvt9pTmY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f6acc482-f5084232-1846-4bc8-8497-cd1a3e979609-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 790c638f87147f482203f32c6e4f983fa4111161c9783c74ad946598c138987f
Date: Tue, 24 May 2022 15:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653405959
