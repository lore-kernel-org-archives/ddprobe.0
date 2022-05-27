Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3E37F
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 17:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653672779;
	h=To:Subject:From:Message-Id:Date;
	bh=kOv0azDGlZL7c1xEFRF/znCrOtMT36sCjXYRAdoYiBA=;
	b=L4By9qJGc8IbAXDjfDqnR0GzOZu68jNLIjq5JK7TZLq+gwybDvU1Krd0U1XY5yEA
	JWf8TJnKalhiR/N8YSQuAzjuL5Iay83Bxv2XxH/GJntbETE+XRxJs/OdAoQPWQ9dIPK
	VmQUKKwNglzseRYUit7tp/129EGBh8/+b+tcLcUY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653672779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kOv0azDGlZL7c1xEFRF/znCrOtMT36sCjXYRAdoYiBA=;
	b=C0DSQHCHMJJbFQnDyB+Nan04ts+Lw+4YbPIdXpBfrSdvHUF+rbQFIoS34NFxN6WV
	R4eNlUMDoK6t73zTaExkAkXnI9Rhl04/KmFNA+iW10KAo1+5eNB2NFiGp7hhSXSeBzi
	pvV6Gr6jPMG3ICG+FLnH08yVep7XE4ahOgAI0r8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018106941e1b-56d97028-704e-447e-bdff-1f2b6e06a8f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0fbb53e584564ccb084d835ba0aca7e037ede5bd7ec3e309d425c3a27784857
Date: Fri, 27 May 2022 17:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653672779
