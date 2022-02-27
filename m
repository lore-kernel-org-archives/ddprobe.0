Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98BB24A91
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645981285;
	h=To:Subject:From:Message-Id:Date;
	bh=NGUKDs/anCytuUVV5/IlF/ITxoDxtYKUdE9QSDZpa8w=;
	b=l+wDg3BRtTJbMXFsZWaae9C81S13IsdSGI73QNf9lKjtVs4KXVJN5GFsPshSaQV4
	5/rkujyD8FNMHdOQb3QzK4mFbZl1yH5JGhX4h2AAbdkkmVRtODHtwfzKlRwoSc89qp9
	SQzhIG1Re1Y0d7GUOyGvJc4V/PIKAc51ee3/iA+0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645981285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NGUKDs/anCytuUVV5/IlF/ITxoDxtYKUdE9QSDZpa8w=;
	b=AgamqepfWMMnUrReaIpf3eoi3hwW5lcX+WIFge0ExIzhH9MXF3BjRkg87XAIsZQS
	kJQtuZjj9kT5SUyyeHmd/OKRiyaDQ/Ie7AYWHiBQu4dRPY9+nfm6iOdmRrOQLwhmhIY
	orD7yZ/Q2XVPaGuQ6VNjy/Hh9MSI4oj3GnC5yEUk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c21398a-1ecd81ce-79d2-4996-9b2f-244ae7fd8f76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6443ddbe697881f33d20ba1da3188518c7112d6312e12f6629c1bcc533e0a35
Date: Sun, 27 Feb 2022 17:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645981284
