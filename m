Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178197C
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 11:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653564059;
	h=To:Subject:From:Message-Id:Date;
	bh=rdF+kRQIX7b7Ap6YPScIkYQm/dI6qJ6iK005Ute8i9Q=;
	b=ZZ72NpSE65/GyewDYXF9+XjsosW8bWt+3PqMCuhMTPiomr7vGUz1rTqP2UEK0oTG
	PY+XqCxRqVD71rGlPM+oLMCrZ+BxiBNE56XcJ+kU2WIvg9waOpLLc6tWc/bn7nE5PYA
	brTqe32z3sLAcznVasVMKTKBCoZo588ycfDH3OgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653564059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rdF+kRQIX7b7Ap6YPScIkYQm/dI6qJ6iK005Ute8i9Q=;
	b=AJ7N+3xHTSOoIks8mYiLASr6VTkWdob0ieS6sfi9G8/8Dkqv05dlfjhcbUfwm/D2
	Z6lRucZRq+zvkWrNKlVLvACv6iU+YmS96fIBj+U3MVdmBClqCTmUjQwFeXHRiTz5Ein
	mIq7rlujxJv4SNBgVNmarm/T4VmcLY7iGXfOvB3g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018100192e96-6a149d0f-575d-4b21-bae0-76756881a61e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb8bba259d314e9b67ef41c6f49235ddd3ee9c2552549f9d263f9d676e055aeb
Date: Thu, 26 May 2022 11:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653564059
