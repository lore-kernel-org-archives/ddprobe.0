Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E492F28
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660336252;
	h=To:Subject:From:Message-Id:Date;
	bh=nC3NDAUB5Ga7e62lV8PCb7ZH9dXUkOdvVCTG/nFXm6c=;
	b=J7r91i4oTiJs3nJWl2qpy5e8sQ2qTwuNqxQva1ssSGvBxjWZSFoIhEWZpaTfWuXq
	vKIeXs9n3buxU874YPR5bPADK0vv0w6+otLrRoDvTtKGDw2152uV04v7mSbmp6A/x4h
	iNJbJ3whHh2OuzEeZiEVWQDSq1b78S/QIm5NsuWk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660336252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nC3NDAUB5Ga7e62lV8PCb7ZH9dXUkOdvVCTG/nFXm6c=;
	b=ADIFsx8oUaJdluGq7+oT2Qooxel2s/wqg7M65KNTCcSUq5fQ1hZrnZ3wntXiiF/A
	goyRyAOAiz7YsuGcsfmhyqfsG2TVpI8a3s3K/A2VXS6CTwo/ecTVDV0/IjzoUH/jBzI
	eU8sy+ASpFLlhpvSKSfEozaB0yb7yP2qwcP4u/Eo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018293c0a68c-bf67c180-ea14-49c1-8d60-43043175310e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8eca2854b5f88a8437c667c62e7b5c0e1a165c7198104a530f8e31290e94a39
Date: Fri, 12 Aug 2022 20:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660336252
