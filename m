Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813011FA4
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661096452;
	h=To:Subject:From:Message-Id:Date;
	bh=4axeaLAIuY92rULjiv9tx8F3sD89djmUgRLqPG6f4UE=;
	b=JALC9qyNv2Tv/ZZmol7yeX5NpsCMeG1/lW3brrCMHzK1YLaLWMOCXzYqfUzytC6J
	VcX853GbqPLIn9fae30XauscTevWdUPjkaDi2sRxfYRad8n6AkC8QtguBIJY9G6rjPZ
	C+VjbT3lJuwQr9ILCVvzqJLid4tNHFPuNLsfUFmw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661096452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4axeaLAIuY92rULjiv9tx8F3sD89djmUgRLqPG6f4UE=;
	b=K9aegScVBnEzRSgL/A8jKP2GOemh7k0DDBq19aRUZB8tdmTidow1vV6Xk7rkG0R6
	JiQFmM9CBt9Z3NxNk/16uvWVkAs0qEi8+e75xP0LQS0dik712A61MopjXIfdtc8dz5f
	R2rlXl32BMORoZWGut1w3OfbHmder/cxQmFA84Sg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c110622f-707c943d-82b5-4fac-b666-aede9cf99f9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7ffb2ace2af3d410a73772e45dace015df1a7322e7ecf0124af61f3a4188aa2
Date: Sun, 21 Aug 2022 15:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661096452
