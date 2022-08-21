Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A4C636A
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661047253;
	h=To:Subject:From:Message-Id:Date;
	bh=q5Mub0KmFWZoFroFPQkD2HG6IEd5HaMSvbrAUSEpjQg=;
	b=FKqax941gyGjnRCLNR7MmSl6Kcy3JPWnfKTZKWGFM7yTKK3BM+U95sT/K8H/7dUE
	AYy2m29J8P+iYHTipfr7CRaejhHXu2hPsywlIBJzt9B0ClYxaS8dv+ptHDy310HJY1i
	DeMzicLJ2aEPlXhXGAl6JS3ggQm+1P8wcG92Zsmo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661047253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q5Mub0KmFWZoFroFPQkD2HG6IEd5HaMSvbrAUSEpjQg=;
	b=JwYnyAtgycrOIceihQrOFXr5KwdpmqnaIBP4aIfUUF01FRRFK4KXzMjN9DkJDoJN
	qExE0ntvu3gZFJofyww536bgkC3gHAy281UjqzwlZS1u58nypmevMCRJjDo5u0oPISq
	64sNevjFC7VDhvKIduuJpgimbr5sK4osdfJrsJUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182be21a67a-da85e060-3596-41f5-9234-2878d7bfb94b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ca996e8eb5411dd267d47a750ebbd53e5db9dd177bbaf249d48faa03110d8b8
Date: Sun, 21 Aug 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661047252
