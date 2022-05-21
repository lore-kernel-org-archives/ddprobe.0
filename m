Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9A62F24
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 11:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653132359;
	h=To:Subject:From:Message-Id:Date;
	bh=GJu7ft5M+PxaIIXSv6alIysbIWVDabC40hQx++rXFLo=;
	b=Ro2KQ9fKckTVgtrVtfLEnwt+h14n1x0w7D+TfgPJwLa20mF4NFQCp4pZzb4x9lRT
	xk82/BAeXJ9g9o2fzI8tRYUkoPa1B1QDnM31VhsIMpXRZG3fgsY5H5y9/Ji9yGTYEzr
	7YCRJApJgtOCciHMNr9OXzRqQds7weo4SVZmz5qs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653132359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GJu7ft5M+PxaIIXSv6alIysbIWVDabC40hQx++rXFLo=;
	b=Ie70KFb9lI8qMn5divWF5o2dw4899wx/LjjLXhrarAlaCrnaDB8JQoheO4mwAJIx
	2XmN/3S763fpMCx5swpT3eOh21u3bDszPPzP25WfqIMGjfSaw+G8GKHd5r4Xp2uVOkC
	ZQGs2s92bh+TdyI7wgGpVmV91kreguF3Uzgcfyq4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e65df69d-5c8a694c-ed1e-4722-b3bd-b170bdf40c10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5102c457ab59aeedce85a8fd305be1e4ef0f688e626e2bbdd65164c58f0a0513
Date: Sat, 21 May 2022 11:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653132359
