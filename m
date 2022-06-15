Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165853D99
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 21:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655328239;
	h=To:Subject:From:Message-Id:Date;
	bh=kdIfHdK+AJI7wvFb7yZohMz8SjvDOgGLkMVzlfQoZQ0=;
	b=fAkxxsl5Xc8A1Y46Ai2WcvlE68y8t/NMFxHnOmTXLdusNLPjFs3i5rkHTkrcZ/Xk
	CvsFMClYUN01McPTQ+1kvc0T4nJPHwugae0JlkatLxmdPmGoQh698ri9vVNkCjv5unQ
	CWTNZ6+nwBYlL03JlyfMPfw3t3Y6h0zp4K9Hh/e8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655328239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kdIfHdK+AJI7wvFb7yZohMz8SjvDOgGLkMVzlfQoZQ0=;
	b=OH0h0R26dEHptx1UMJZqYXkGamADFDUv+Z1Q5vF6EepkfAb394XglGKQX9tr2eIB
	9zAi+4216247Jl8P+yrFk7daw37J1mJmkPGlai7rK2kiVsjdaxKE9hLwZ8JI6Cv+GZT
	T2S+Rdy8ioiNWUS4NpQzT62wasSl1TBc0uygwDe8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018169406ea5-21dd766c-2e1f-4d0e-b58a-be63ae4f02ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00c20e0582ee6833bbae3bc398aad40cffbbd5cf0901e93995cb917aa2218e13
Date: Wed, 15 Jun 2022 21:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655328239
