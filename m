Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0921E7F5
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 11:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651058398;
	h=To:Subject:From:Message-Id:Date;
	bh=/75u5Fp6yBBCo4/NRatSi/wP3JZi/1TR8W9/t0DGQIQ=;
	b=HwNIm81meLAgJs7srEx8GtiLVeSfWbRgMHHZl7C9Rnf1AUBpcWzrG+v/nYyxi5WW
	WE9gv/sLlyRgioUGceJasihi3SLmA2dhMybTZC0GH4OBI5l9Z9r1pMXRMZgYuqneAtJ
	u4y7YuVBcMTGyL08OLQCzVjdn05Aqi+6q7Vndwz8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651058398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/75u5Fp6yBBCo4/NRatSi/wP3JZi/1TR8W9/t0DGQIQ=;
	b=Ir/7XsR4nGVlcugjnYXqhGF8ii9m3nWC4zRdzb9W5TzAgY2PlyY31zSVuNShiaGy
	RJfuzV1GMUK5xRk/UbQkoi82MSDiIp9gIkUvRMCXtiWBm0LbiSFXSdXatJJhvCJ8aUt
	rzcIpPtDSow2vZh/NqgVJXTSwzj/j+H5Usuu7ScE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806abfd41a-c2d041c5-bf63-488e-a522-081462918ada-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92108c200eb94fbd6f6c0457d05e3e00d3d80e7c99b36c7cb95a13de41f6f42c
Date: Wed, 27 Apr 2022 11:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651058398
