Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BD2D3696
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 21:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645045585;
	h=To:Subject:From:Message-Id:Date;
	bh=fyAoZnHWAMAFgovpRYeGnI8Rlqdywd7B9I2a2Q9UYng=;
	b=NaHq5yfAQNXUFCw6aaz7Gc/+ejrttwqpl3Sg1A7kqHECHf7oWFnbXYC17CWy3AyQ
	z828K7pohtOrs6qApdayOGAAo3lUg+WsdYCSdoQQAkOmUsRcQnwjaL9psGJByD/ZTmY
	+o9wvIYJuN3Jl0JsPbKK0QBTERA9nnMH2pYt+jLo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645045585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fyAoZnHWAMAFgovpRYeGnI8Rlqdywd7B9I2a2Q9UYng=;
	b=OVNSZ0gc02PjUWF3nZy/MS82qU5E2Q9N9klbRZ+JubS+Jq/fOcNdKfJsGaqG+lnY
	Q4x3G6X7cS5ulxkzGQtccrlW/9lQRE+XcznxxOcjBEHq3O8cPLDRVlvC4l9+OGwQx69
	+jCiko8W/vAYChsvng4X0ck1b6eiBT53YaViMmcs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f045b937a-cd5c86ec-bcd8-46e0-b653-c03fb3e80039-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8df1f3838242d2824b49f56176e901ec902b0f880397d77d036716c22f481f9b
Date: Wed, 16 Feb 2022 21:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645045584
