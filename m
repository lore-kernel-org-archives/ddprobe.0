Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E567E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646602284;
	h=To:Subject:From:Message-Id:Date;
	bh=q2uGooOFu+XPIcC5v9ilKMlU0YPL67fJmZk//yDHOu0=;
	b=ffyZ2n4g4Q+bvkX80F/f5J4Tn54IgFE9bYaTTjC1St5mW66xIcLETOoSyD7O7zCD
	u9Ore7Xcvt1Zvat4NQ+uJAoJIg+1WGC3OHoQtmBjYGs745j96jEwPEC7WepmxuzxJAd
	36VPkm2f2fg/MITVDW6AHZ2oQS2aA15P6ekWldhY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646602284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q2uGooOFu+XPIcC5v9ilKMlU0YPL67fJmZk//yDHOu0=;
	b=U9fyFt2kD2zosWLBO3QT8wPcXiPuDnVFBrZf2cMk4HFJVgUzeRb26KRYIqF+dR6z
	0sqBhIaCp6VJJKwZp/+IedAGs0u7G0rle+0KTEi1KuH2CUoBteaqBPZV1f4h3kiUbVK
	dkEStd7RTdLaigNFyI7hmGk7JfAyQwl4WokOIUAg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6124eeb9-9587b36b-c87e-446a-977f-e3f9b824f9d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50daa0ac699e3b8b674cf8295565c91c0dbc2142b5d570fd8820bb0df9dc1d82
Date: Sun, 6 Mar 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646602284
