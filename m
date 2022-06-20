Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFFAF7B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 02:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655693459;
	h=To:Subject:From:Message-Id:Date;
	bh=mlwZIVdOavEugYh75zVJurMFlIKDR7kceiFgm+RLdYQ=;
	b=CVFh8zBqIS9znZsP0JbGVqB49tcoiDamZhQhuQK4KbXveuhwEYpLcmr454F5JqcP
	gJaixjsGhSwAKQ5mxF3s++Aj75UUx2/IoWuEkJ640Q5r4UiE4JR+LAswdujrsDdfwT1
	YbiDPe5VvFjPMsmwVMU0LktJQsMu2FP8/zzKvg+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655693459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mlwZIVdOavEugYh75zVJurMFlIKDR7kceiFgm+RLdYQ=;
	b=Dpt5520KQ8Z2Gq1DoHZZf783KH9LVxYPGVgj7ODOXoEmXS22BU6PI2YP/bLd3LBC
	w4WGQGhSAp/+Q7lxaNhAuVL5V1coyp6NOANVISiFxQeH7VYsr/X0qTvJiZdDHx+lVgi
	9cQSZllb0m7d/plrUu71+GOQ3m/X57xY7P3VqkBk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817f053f30-de17a139-903e-440c-9278-b62f9daf6e10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19736ab0d5a7a83aea77d9a907f5e32e3b124102a0dc9d40fbd280a5aa4e5f8e
Date: Mon, 20 Jun 2022 02:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655693459
