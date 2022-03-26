Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D93C2F25
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 02:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648263598;
	h=To:Subject:From:Message-Id:Date;
	bh=WDCTCVbufQfckBLg5v+KC4ozLa6QhecR8jFJWVM8i5w=;
	b=jMkanCo9XQYVU13FkqO4e15aN7QFlo1uILRZMvZDAYZSDLzrtC3xzrCaNHI6p4QL
	7sCY9OayavQ0ZfmGOBB8uLNoqbeqqBWRafB8KaEWCisYvvPBKwbjxxByO0/SB+JV3HL
	9fAM/X2oXOBHWKuIIa3R1ATN+DnXf1LTZyMEVLsg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648263598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WDCTCVbufQfckBLg5v+KC4ozLa6QhecR8jFJWVM8i5w=;
	b=jDxvvkUGp/x9J/6U6KfaFXhX9Dw3cfpL9X5qIkJQtFy0Fz5GI17v5lCP1srWF9nL
	gAZQKLXq1wqXexzdnR0reO+kPod5cupQaSMgQHpZsUfNS8CNABVD8EVkDd3VXLUaO8U
	LfnB1Hp4TOWgOSZZGUMj2X5xNXtS0/DBgs6tgKsA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc42a90c3-83b2563f-744f-434a-b007-8d81034b99ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f2382a85866eae56763b84ee8e7ca06861e45bb841507eff35c83239653eae3
Date: Sat, 26 Mar 2022 02:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648263598
