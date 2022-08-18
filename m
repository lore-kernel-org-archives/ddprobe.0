Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5853E3D88
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660823452;
	h=To:Subject:From:Message-Id:Date;
	bh=ATY6/XHdv5AlK2Wzc0RSeGACx+BdMF/gLBNFFKFspmU=;
	b=IuOLwiBqfdQnDDfBl2hqKr8gNFPwtjqgGbHJ04qz1UF3+Xm5YueiEBgDgrZWo/jA
	e27E0oVqAItzTW2ukeqGYC5hQgdVX3Ty7UqjoPfVDNnpPnZya/HRHC8ggDGUhBLxkAD
	RbompeKYaW4RiPhp19/IV966QxrCmlSq5q/P0Zmk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660823452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ATY6/XHdv5AlK2Wzc0RSeGACx+BdMF/gLBNFFKFspmU=;
	b=dvrez3WHZd0h+sf3svKKAeuWXHstO9uYWSaeIOuR5fNOSQPiEeveB1ELS7+mPLl1
	HJo1hTeIUr2Xz8IIeiwIOVciEzlAJ8xI09C31b2u1gOTBRK4xqI75lg7ViP2Dq0rwKI
	3A6wM8g1jo1ahcWgwd5B35cYRFKW70QtNnfmY94g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b0cabc39-bad8cb92-b9b5-403c-908d-f892128e516f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f27ee1bb48fde1d4cb2d6c1d7d437e6ff359e7378b397472cd405773d8690034
Date: Thu, 18 Aug 2022 11:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660823452
