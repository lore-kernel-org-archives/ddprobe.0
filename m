Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA0E7C
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 20:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648843978;
	h=To:Subject:From:Message-Id:Date;
	bh=xL4Forz3uXN3ij2sFIlLp+mzStTs9jQ19AO06nqPiQY=;
	b=WIN6dTULBymGESTAg7/ipYYxJYyYPJ7Cj6v29sLCYC+20Dau53FFP5BsEkwidkD3
	9OkzoIc9PjtoZIgrJliEoWMk4MwsaSxo6Lec4hubbn+ARi4kjOppxoC5nBxxJq81yKL
	6B1h7vhk4LLlAFNoZHFFtCqea2pD/5DkoklHwwQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648843978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xL4Forz3uXN3ij2sFIlLp+mzStTs9jQ19AO06nqPiQY=;
	b=C3bEA2LDFUslsvucLZ2FJLjrtqEwJd8RpxyWLJ8g2j81+7jvP7dL1rMixJFXIxRf
	hNHBMdIjXgCsPVomM/GSvz/Akul62fFGz/L2uqPfKylvH+lk0lEGVxNjw4q+QmaGmx5
	Nnxc2huA9EPMxST0jd8a4uXR5n9d3b6UeZ4wpe/Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe6c27617-08c569a9-4d1f-4a17-9ab4-b5165afcbb97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac4db5b30d4e085e8bdec2e37445ebf95f967b844f0cb13c08af5a40283f1ed4
Date: Fri, 1 Apr 2022 20:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648843978
