Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2F729AC
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660514452;
	h=To:Subject:From:Message-Id:Date;
	bh=7Pkas0E2vH/gwv4mfYsH8iUEvkkNOVM8f1HtFQVenSk=;
	b=Sf2sLhHtu5eAS0r2Vl0mmdMTzPAlU0gsNrqV5KB22+JR9o0T4msdpIyYcNdZO6eW
	n+o6/789JjeW1foTH75nZ6uUzFeaUHr5CC+EylNrp0Nd9DEPDS4Q2p/RkbH4bjNS8h2
	E8feFSSbHScpbVXXmqjEJWv6TqqSDw3ZHPp47Bgw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660514452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Pkas0E2vH/gwv4mfYsH8iUEvkkNOVM8f1HtFQVenSk=;
	b=CCNa/bRsYrw4QYjR0jusm1zl7hqlyCXjY1lKVWFVKMmv9Fldn0KhqwUpCgkm0Fh0
	x1DqhNNd3mLsD7ec74wS3sh+DtCIb+LuoJsN7y8bNRQ482lYNfg2lOCZbuj4kBwaiCj
	YCx1ssa42lBga6eNTPLtOWKoFJ+Q047V1YbilPtA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829e5fc46e-1405d9f1-cc24-41eb-9a1d-f54c712831ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad92e3cacb2bd02b3d8230458bbede3dfa4954aa92d34636b17b9050731298dc
Date: Sun, 14 Aug 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660514452
