Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 731BC5CAB
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646151685;
	h=To:Subject:From:Message-Id:Date;
	bh=GpmebYQh416JhJqwgRm1XkaZkJ8htYivnk4Y5IxUuLs=;
	b=J14gfCjOq/eRiHSEoithRTlonQpoAMbgzWlmqOcA/Yo+eh+G5m62jCaqv5xvEHui
	D++QDesbNE3soWtrnC+Ff7z5hTOJr2sAQYCqMWi5J1n0Kkd3/zLtVduhxaXlps4Mrvd
	FVnmiPKCzP4KrUMiJBMbx0ksdVD8wtKz2NmfzE+c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646151685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GpmebYQh416JhJqwgRm1XkaZkJ8htYivnk4Y5IxUuLs=;
	b=RCVWeDUS9XIeKGOT39Wdl7eTMRgP3mFWiVJWS375CppDXx1xKb6nyjN2QJLKpCiD
	nBhlnp1bRX9cABzTme4KNZI3JOoXvPx4GAVIK4ORbQvKVYAbRGcAuSXctjllco1praI
	c6E+wZBHGD0cwD+/neTfj2i7q/cTD+MIRMbl1KQg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f46495296-1a551600-d8e0-455d-98e7-3f53f427f3b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21acf3944b2ca0b586fc55bb0f6593793b151bf978e9b1696aed35b31b796273
Date: Tue, 1 Mar 2022 16:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646151684
