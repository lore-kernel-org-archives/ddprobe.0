Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE821FBC
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 04:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658292412;
	h=To:Subject:From:Message-Id:Date;
	bh=wJRTcqFX3AscOBUiGP6W34BFHWjlQBS9vPlUU4s+lbs=;
	b=YmJ8kGP6BQtGy7S7E+BGefWbVPfQXrmHGJ09oEX7xzbwRK8ASDilyjS0qlrPZDol
	YwDsGGm4dh+d8DEqT7sYGyallI5AVnfJB+r22nqAN/gSqZLyNJI+xPAD5h818NSftol
	t8qo8T1ycoRsaxWFkjD9UL2sd+bml8i+FO/1lyRQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658292412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wJRTcqFX3AscOBUiGP6W34BFHWjlQBS9vPlUU4s+lbs=;
	b=QjKo1foOrBVaALRZTHD3aOz3CLPwZXQu+mh7DVe8TSycmlx3+gOClMRuu11Hy1Ng
	2/Q9Ky7OiKk9+wW+PylWvRNP2LgbKZjIGMVpSxyo46sqG3u1X0k37nLX+j+s92vmlVx
	pTPvjCZXgBH9ODmvtcq1d6D6pxAPnFiKnKTKdEjs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018219ee1f72-8f3842c5-1b42-494b-95d8-4124907c8fca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63a56de92220b4e324f08e5b1d3fd5ccabe7e6795e2f21dea0607807742455af
Date: Wed, 20 Jul 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658292412
