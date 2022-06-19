Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C287B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 00:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655598539;
	h=To:Subject:From:Message-Id:Date;
	bh=ac/e9Tv3w+YX3WHg3wuXNC0PZqntcwebC5foh4zXLmM=;
	b=Oi6+h5UuAzieTWtDaTyJWQ1lw4sgr7CFRs9MM8DwYcBF9wYZFpGOFUEBmb8p722F
	WOykCu6fSFuXgOq9uvy7nNIgFaCGGvHHTkU+mdjqrLetkImuepmPvyo5zInnwpIln7R
	c2mw75sEXJ9KQKZnEbujqBCPBQYyPnkVX73ALEec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655598539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ac/e9Tv3w+YX3WHg3wuXNC0PZqntcwebC5foh4zXLmM=;
	b=JNJEym1L7qmz0BUpKQIwg3p+hcJejsNuWrRhBBvlXaHCbEuAlFXguwEAFBxh5hV5
	znmUAB5FZmUu3S69B98+k+oNme+BrJQeyu+UcNviXmnmBdCv3vT4U6QWDBqQ702IfDL
	nRMymNWchGGeR5XSIXdEtd6Ds3Lxmhxuv3H60VaM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181795ce1ea-488b522a-703a-4c07-9501-a46dbb572871-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a4c30e84ba2af83088007e6a3d3f73e41520f63cce1f0f50295378f56a6f296
Date: Sun, 19 Jun 2022 00:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655598539
