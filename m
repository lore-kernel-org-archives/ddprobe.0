Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6352F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645147285;
	h=To:Subject:From:Message-Id:Date;
	bh=8SQz04etrVu6v186H6PKKUiB5ZYM/+xlwo/Ea1wUJRU=;
	b=bMNkyv7SP8sRlD9Vz740oRbxF6orVP5eztfmwRRyRLTl4oPJN+2M1dllRy7Z/sM8
	UL46/L/4MSD+bL7tkRZrJ+SBODkVKuW1qEHytLVkSunxzuS0RLv3fbsWPmpeU6eb8/N
	G1HKAar7M6RAyH41symNZLrPUE5xNyAOXO2QcEOg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645147285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8SQz04etrVu6v186H6PKKUiB5ZYM/+xlwo/Ea1wUJRU=;
	b=DfACehNo84giIstOAPKGmv5HBvCb4GJ5iNdNzxaiHJ3lQsAPbCEMKSBD2Hbwe/uT
	lkxIqAqWnLhNEcsqrNf5IvhrC+ejMUwnvjt2ahGLMtOtvAEh+dTUrZSudedfBiRtbrr
	zaa8gRuv31gx9KLa/Y/7hEpMiOyRP/4TD8+/dgIQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0a6b65b5-030b47c5-82f7-48fe-980d-8cfd6cecd1e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a0c89ee728186736d5ba42d207ba858457edd41e79fdcaea7820962aedd654e
Date: Fri, 18 Feb 2022 01:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645147284
