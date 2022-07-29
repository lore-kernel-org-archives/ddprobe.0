Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421474696
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659104452;
	h=To:Subject:From:Message-Id:Date;
	bh=qIgvYZv2flRrX7ZukYBohark4Cd2fh3Lb5DsUWVlASU=;
	b=Fg1wDss3xWtbDyCpU6yOD4BSjZPXFB6tRk38JWXnx0U4iDGwUFKv8yPx2AKO0o2o
	W/6kvl8e8lUhkHKNcaQ+qhNiPCiesTzjr//V4aX2YTNm7TmK8MFlD/gOB/BVbp0eOMt
	6yDIuA06wWdJJ4qa2RIVqh4ov/exzQ5gyveeAI5M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659104452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qIgvYZv2flRrX7ZukYBohark4Cd2fh3Lb5DsUWVlASU=;
	b=MIJrZKEYV8kllmUz+l1uGn0G7VxGc8MGRwxPEHzmtYMrw6z059nnZmFMhkUg32L0
	XsDzpioyGk36yo7exlOp/iFf0XZyIO2as4K1q4BOHJA2MqqinJ+1H2U9ebkKCU7PIdq
	VvP3fbwmAZ4KDC4dWmnki2IYagWIM/mX78CerzcA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824a54dfc6-6140c4a3-c56c-4f02-a6c1-60f105fdc248-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d325ba3d23bedfd081f1ec9f5bdb2b545514446270c9c5a1856d307be1c67a8
Date: Fri, 29 Jul 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659104452
