Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E2433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 19:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654716419;
	h=To:Subject:From:Message-Id:Date;
	bh=4kPlf2ma0gKs3kQsIOv+OAY2VwriExB7RIOwaQSrOiQ=;
	b=RxsMCO2vbv46iUXHawxfIBloprZTjPfaqlaEDNjeqEtQj3Q+LkoEcV7a/HuaezWu
	GCT7MVxiu99z0cYvV+NqRDUPyaUo0amew1tMvxmh2Y3AtwTi1946nipl47hfN9W95nD
	t5ig4WgUL7nPHVIHH79RgohB2QVRx3c2wwsQ+c9A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654716419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4kPlf2ma0gKs3kQsIOv+OAY2VwriExB7RIOwaQSrOiQ=;
	b=LGX6Ud/SR9Oof5aaeKItfpE4ThLDsYK1NJCvLZbi/2sO1ocrGCwqGk1RAk1Oxwmg
	MXehCBEY1LYiSUf1fsXb/vf8hecDkjzUsG0fRRT1VMmaw1Bf5/MbVDD6Cz2VKu+jUGB
	7HUT6ZS4hC9u4sXOTLdrAZzbnhp42rBemadD6IYI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018144c8ccd9-dc853354-c15a-46e0-97e1-354804125fb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4419b838c7e06592279d21b36eb0996a5346088feb5ffe6b1d4b33dfa5424c8e
Date: Wed, 8 Jun 2022 19:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654716419
