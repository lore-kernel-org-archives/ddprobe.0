Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2321F7C
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 10:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653475499;
	h=To:Subject:From:Message-Id:Date;
	bh=7DuoiMVUPKhnloh9hkiGSFOKDIjq8DCgCh0EFUn2jqw=;
	b=jxAk+UvJB3c750Yp5iUBuCSxQZw89OZ8Jv85R+a1wbZQP9rg8gwrRmcHINbP0DCm
	ZZoiFFwzFuWS4J5ZiMSDYIfBGraGDJGL9VcFQmBwuI7FyNHMMod3yD29ZyS2mcjRNrj
	GJb6f5jYUD5pwAKZl5Y8a3D7TOppqCO2rluTPsDE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653475499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7DuoiMVUPKhnloh9hkiGSFOKDIjq8DCgCh0EFUn2jqw=;
	b=ZL95micgTpdxA4x6DHzo7X3WY7gIuA3MeInH3TI2gA07FwAbsvzYKWNbpqLPpQBW
	snWXZ3MMaX9wI+1wjtfoiUBte0CQ9uXgZqim0pMRGXS44ColCKKYUWEB9c0ElfAu2KY
	XzDZgB6V4KoOKVO7SwMlr5FvvDC2LiOycaWpibRo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fad1dd10-48e89058-0b8c-4444-b7d8-768f61f9c7c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 775b6fd90efd03b52a09bc9edda2e58a4b7ffd5a7e725f98cd887c61a542c74c
Date: Wed, 25 May 2022 10:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653475499
