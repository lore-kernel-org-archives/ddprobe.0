Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6538AC8A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644873684;
	h=To:Subject:From:Message-Id:Date;
	bh=7BGp6v5SYGKX8R7z8rAZFc+pBDMn4R9DTyp4MYd57/U=;
	b=g8weBdgPyqGV0rqTEMJoq/GLJnSdSjna0mXWAbIzBDdyIRp6tFxWFpQYD1ssQ+Nz
	3DS9iz/seqHoZqG3xFD+VEj5awR0wH3oyottPbnANwcNRqMYadZXZfyOQvMWUhf/xpQ
	Pggh2jcOLdjkE+cfAlykWHaMO80s8YP0yG92vFXo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644873684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7BGp6v5SYGKX8R7z8rAZFc+pBDMn4R9DTyp4MYd57/U=;
	b=D3iHtk76P2M5wf4oREzhRenK29eU2W5RSQ/oYB+EwSm2hTI2yOmneTovZS62D4S2
	iAsFJ1KGhSFT1jDC82eUuoyy19qgVcHB2zYA4S58AV/9oxBvGqcrlxUF7I7gl5IsAXW
	wZy3SPhLj1g7ntGX+IJ31SyRD6vinKNPhZdkK+cc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efa1c9749-b403c9c5-fdc2-44a2-9b73-6519f4f38991-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d03df2860409732172d89ee167a217c8cc2782fa7f6c6c7cdcef5a0f3b9b0b1
Date: Mon, 14 Feb 2022 21:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644873684
