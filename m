Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE141C3B
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657516012;
	h=To:Subject:From:Message-Id:Date;
	bh=tcUgQp7LjmBJy6/F9IJ6As2ilvkjRpIagNSbtUXLkF4=;
	b=XqH0xXmN35SOGXe+n4O8UPmnvCfxN133qe7Mld+JTUv+lzjk2bqfo84po8unVtE6
	4l2mH/QOHPx13S431Oi85Enit6XeV/JSdgH7j8Z0uOA1Mud8UrvHk6BwgN1beApt4HZ
	XYGNx7HQhED+i21GC+EvOpSMZuWNL4iNS4sONX3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657516012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tcUgQp7LjmBJy6/F9IJ6As2ilvkjRpIagNSbtUXLkF4=;
	b=Ro/A4jqz/AAKjLDCPd3/Tyn0oX9N+vYse1g7/U/JPqSXX3V8uXT+9fRMek9cMJL+
	/ma8kNQ8Fl0S8/BsiLMHdwS2OE0C4g4cGW9vWCrzniIkSLCm2yB70KSNg0KD2aNW8u9
	lvHC3Tk3OnxK6hd19izWJwI8ytBMTHYL5l9tvtSo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eba73366-2d768fcd-43a0-41e1-a62e-bbcf0bce4a29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b481c19cb08b9f5af4c0d1697d26d2f3b57be6fb0780b1a33f0073abf3ea420b
Date: Mon, 11 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657516012
