Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B85F7A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 05:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644642058;
	h=To:Subject:From:Message-Id:Date;
	bh=PrsuQ2dDhlQjWyo6t6diTMwSvXRyiCLR+AAqJFRA7aw=;
	b=HmcEwQMavjLLc4+DskRFLjH9fRN3MFxAVIpIFZToPV3R1s3+qlRnpTk/6yWvpwAM
	05dIuPMtG4zPyVxkx7T5z65Eg+FfR6lnQWqTFoYb+QDl65hc0UZTQNLSzNP4as6hyFo
	qzY7ixg8xliPBGDzThK96ulxQ8JrnXvDh9R3Z+rU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644642058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PrsuQ2dDhlQjWyo6t6diTMwSvXRyiCLR+AAqJFRA7aw=;
	b=PIr35vZvT0wCyPnyq9XW8oPfKHQXSpCAtcuwqcl0aTVsn7EvANLlUV/PheVA3NUR
	xnXy0ihL+pth6/tuJnQYRwzlxfnEBvFPimj+jWNY8eEWzbA+tcSOscvZU+I49QRIcBC
	KBjBy2ObG4g/MhN0yeyC5XSli95rHNvZzTplNfls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eec4e3eb0-8899d712-f8ed-4a7e-9a55-49e21500c57b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c61c656a6174a9ce3baf7c2af8b8c7fd26d49eb4b744f2ee0f151d1ce1e27e95
Date: Sat, 12 Feb 2022 05:00:57 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644642057
