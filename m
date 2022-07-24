Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7914D7E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 08:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658651212;
	h=To:Subject:From:Message-Id:Date;
	bh=aHEjki2VZTw2kj1PnXYM0SqOOAHLstFkBZAs8faozcw=;
	b=fSOk9yVz3xMGwgp0RWVOw0yOh+MFqVX62p/QZF+Q0kMsczdxoLEHVRtgID/kz/Qv
	ztj9cZJesUypHospOGO610XOUSDii5ei3MJh8uAWfl2m2rUHvB5hJ19hJ72WHTl2r9b
	gDfN6lAstqOOr8KMKCpwmXs5ty9NWz/RlpD7G6pw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658651212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aHEjki2VZTw2kj1PnXYM0SqOOAHLstFkBZAs8faozcw=;
	b=RlU4Fx2qXrkFU+kmdttQxLEB4g2FRkkQU32miLkUqwAIihFjATySsE/O9vd6dCJb
	hZ8mXvHyaWGSLoFwhmxf83R/I9QP7KThV4RpOjWPzRTE8+ljgKE2Sf0ldoRmPswlebw
	lmGI+YLo4uIB8bla7zy8xTVFZ9IUJMMCPVbtUxek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822f50f9e9-c185898f-ce74-46d4-b284-f278a77271ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e2309c2957c553370e61af5604f7ea1a343a8d577016b3900c015f2411fc849
Date: Sun, 24 Jul 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658651212
