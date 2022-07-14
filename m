Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1A62C9C
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 08:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657789012;
	h=To:Subject:From:Message-Id:Date;
	bh=7U++ru0lmnd6xi6elOQxTm6gopg6sCO4FnXxIFdc/ro=;
	b=CG4yu8X6+xNppm45+PRqr5lUTBMegxORB9zncMXBGPFpfdHnvzWdstIIQDGwmoxT
	wTYrWdEuEADkaevLobNGYvr5CQaPGxbUQxOqiKSHyT9Ta5ilO7pFPlhBCs7Wyz7XBuc
	KEdCcAe8jzv59x0HNQvgAx2zSOJ5bpswQsHrxR/A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657789012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7U++ru0lmnd6xi6elOQxTm6gopg6sCO4FnXxIFdc/ro=;
	b=INXGNwM0KzqJRINFhJKKL7et8WKYnkPR+YFSWpEr0uYPQyHGP0M9+SXPZ18cpHxy
	5LO6Leg9hvv+x8e2Ucg4lF8tPvoeXCnYQr2CItfx/NAdrPQK7HVPbctmav1bUSYWg3m
	6VnO+U+o50beRTTAmaZ9D4ObvfwKEMb91ik4gD5I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fbecd945-c39c852c-4a5f-47b6-bdaf-5f45862c6689-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd01999b13ca914202ee820dc0d1e894f7e4d31b98c4637e5c301135e314b08c
Date: Thu, 14 Jul 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657789012
