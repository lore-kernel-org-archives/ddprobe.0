Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3AA4A01
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660081852;
	h=To:Subject:From:Message-Id:Date;
	bh=mfgrg0dF1wZW6pnYd3lcHVTzXb+d01m19AdIKcGPiVo=;
	b=RUnihnWgW08vZzAZ6OEl9pHv2sBgQetsb6iXjI82BNjlqX6iAk1nC2nePpKZUhWb
	fA9sK/CFqq6jaDysCGEJkkaSw5QCG4X7e9qrAGpYgbDFI7OlJH2EMMMho4vl/oL2pmk
	oVG6NWdSKK4TmKlPgmSlauPALokdB+WMl7KOGtv4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660081852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mfgrg0dF1wZW6pnYd3lcHVTzXb+d01m19AdIKcGPiVo=;
	b=OI6hrOAbVlEIjP4tssYrawO5m2qtvTOpSOgcya/+IW/YQ9onJiQZ2pfVcai1AOcw
	iMRTWtOWjoFoPzEXGxp2x2l4f36TiY7Zh+OeugPb9jq0qv7ZN6LXpDR6ltJsd07arq+
	MRTm1kOGfNURkjse/sAToRgfZyUS+yJOxPWg93gk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828496d0b3-248fdcfe-81ba-4423-8e0d-7f2b6f3f55b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d20357ca65947e58b41413307bb43c681c33f5dd82b759148af5090466353368
Date: Tue, 9 Aug 2022 21:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660081852
