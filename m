Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DEC17C
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660721452;
	h=To:Subject:From:Message-Id:Date;
	bh=n3Meblg1rqCSKH5jaPZxiKkSXR3TceyFdA4EuWrYB5A=;
	b=O2bdt8mWS9XvVofab//j9zxtOC3oigjnw+bCCmMluDhjt8jeIHUazGzjY15nL3b+
	ctTuAirrhWAZwie8cBdjkXgqMfnWilqK/SPnuPtE7nUPdbDKlLWRKcShWAbhdDoaMvm
	iglOIoej/O7/tmxMNvde7fDMpWClS5r+L4r+L2vM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660721452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n3Meblg1rqCSKH5jaPZxiKkSXR3TceyFdA4EuWrYB5A=;
	b=Tz2YUXrQWcjFgiL8AVBv9WKfvKKAR/QlgbTVUxNto3VVb7gS63Tmiw+rFt0bu91m
	up+PUllY5hEmLKTuDxmt0CXXCoxbu10JSYeNeMCw4lwbtMlG5zTjewyRs4snO+0UZoE
	XrWIE0AKjV6yyAVRah8rh3ui9QyHg53btfIKW/CI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aab6563e-7089c777-967d-4376-ab84-212336c4f3d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24dc03ab82c53573b9042e78e2f43ca47e7035ad7291a0adfe602ce578a2af9c
Date: Wed, 17 Aug 2022 07:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660721452
