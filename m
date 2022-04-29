Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6789C1852
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 16:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651248058;
	h=To:Subject:From:Message-Id:Date;
	bh=v+sSSi3IECSSsvFbsaBZmxCWYxg1eKbck/QmvtOktfs=;
	b=d5fAqLtkKK789sUY69dBschQCdmQ7uvLkfP9bo55bOq7IV0XTtxH4zvpuXjivAyK
	XKlRzIA1EsKu9ZDviHQgwgn1S49VWTZ2Wtd8jhzPZ2lyjFles62Cdl2P5KOmfTNpARF
	Nsw5yamT0BxoVTEZn/4mzbKxYpLpLcWY1yeWROY0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651248058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v+sSSi3IECSSsvFbsaBZmxCWYxg1eKbck/QmvtOktfs=;
	b=khrEV9pw6LfPFNDvYc3v4W3u+fJDCjw+gOHlDilziAO0owlTasGDTgeI0WGqQn+c
	EjjAOPR/8KzrNb4FFOVuithIIJPAZkLjK6sufp6BP2LXm0kk8Ifw9z169wxmaioJVeZ
	XsW3whdTi0wTrJi47rh//nImrh76NuqZgKDTfoCU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180760dcfda-bc451006-2c04-4e2e-896f-fa7ecf1bfa67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c9185282c029db89f626b302fe63a148bdb346d76c5069396d9da4f8f47d428
Date: Fri, 29 Apr 2022 16:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651248058
