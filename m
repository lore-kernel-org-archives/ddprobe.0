Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B116641
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658872852;
	h=To:Subject:From:Message-Id:Date;
	bh=VN/w5HzbQRC1o5PVQNBBg9sQWTIf90M9+Evyue2OHg8=;
	b=U+U9paupE2rF1++W7zTApXahpPUwHkevGUclQYOQCcYKRW0ggU665EIKK2ZxtN18
	cFJAlMrGUD8zPWTRyOda7z+5+3jn3MKiqCAMveSx/kUiHBF9KDX51gAnIkktKdMTaSf
	DzAxoMgSUY9VOPPmUjKaQa5/gsjaOJ/hewE9GLZ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658872852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VN/w5HzbQRC1o5PVQNBBg9sQWTIf90M9+Evyue2OHg8=;
	b=hcBgsw6GBbyBsGvjL6rxZ15R6l7ZuOaVR+2x0SRtVvHCa5wMXlZedkPHEE8uQXTC
	XVU/e24J92aIomwWUMOihzrutPjZp8ljhTUKurIYMVvrEzcq+LDJ4cMFApWDTjZZthp
	MpkjQ3LHJF6A+oVIqi4x/sS2Offnt3k9m5TDI8pU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823c86f061-046ed16b-07cb-4c70-b3e4-fcc324e284b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 980ea9b267a9ff107fe446e4ab6d7977d779d616f2d3e221de58aa3c6487566b
Date: Tue, 26 Jul 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658872852
