Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D5F1852
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 08:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651305958;
	h=To:Subject:From:Message-Id:Date;
	bh=VK0bzpB1SgH74HrthDXNEeuBO++/C/UW6yp00oAJ7b0=;
	b=L4ldFCw/WvnTQaR/XjFgbTEKiWabHDmawd8pgydJy6baBQXjMmQylTDiQ1OdVVBX
	JKwn+hHl94qNJ3K9Y/HEoJmw3liIAqUD5Cedy9ffhOnnIpREU+WO/R7BMgjF70c581U
	j+GXkc9NW2TTjDJMntz6f3Ude50xxakZ+QwgZb0Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651305958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VK0bzpB1SgH74HrthDXNEeuBO++/C/UW6yp00oAJ7b0=;
	b=IDRN/q9vEgqzMUX+gRl03eb3Zqp5BS+GMwr1ShVqsKC8fApc89NHYgeVEtVUuK/2
	LGOl5/0oHmquSoKvoy2LT+4L4XlZo4R6EAbq0vx2THNxHLPqVDcAtsg2KL28Tk5bEJt
	kVCfV6gKQTlWM6LADEuj35ONFadg09xQFSa2g73s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018079814c31-3e5958f8-6f8e-4672-8873-1ebf1bad9613-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e533673a6f5de2fabdf8c669df8218df1beefe7d309c34e2766e9910c4ad2b2d
Date: Sat, 30 Apr 2022 08:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651305958
