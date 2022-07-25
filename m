Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C0A20E0
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 20:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658779612;
	h=To:Subject:From:Message-Id:Date;
	bh=LvD2+Y/+vhPlvUigOZ1nWwKojjtNbiJQZF/QBlwZKDE=;
	b=FMwLMB7bD3fEe/e09o54ffM5tnlEVpJ7IzwpS6pqqxBbMh+CCZri/PVcQNIHc2yB
	tbW/TWF4RNV6mCkoYBeuvwZG6siasE/xmeNwX4wlPdYgfz5H5r6W+L5w9EaRYdkuncZ
	j3nR/6T7bpKSy3CKeNHnOk4pymQVcWWZF02Jn13g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658779612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LvD2+Y/+vhPlvUigOZ1nWwKojjtNbiJQZF/QBlwZKDE=;
	b=QoK7B2BzE+0ATyeJP3UqN81mqLHtYjArnupCyjZrPKDbzvxL6WYOzGuv4eMrmeqB
	1RBNkouT8/AZaJ71WPe5UVUjJeDWy43g03AUv6c8cnUMMeiffEsHC2kszBD9zQ6H0sM
	6AErfXimUpeDfS+93wowbpKl6fK88Ox7tT4mREeI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018236f834a1-ade4c539-b8e6-4955-a06e-cf48329b34e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e4f91b41fb6d554f63d943bd5d0ce2eeb1ec9c9d2c373bebb2918993d3e4f99
Date: Mon, 25 Jul 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658779612
