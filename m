Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824397A
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647839785;
	h=To:Subject:From:Message-Id:Date;
	bh=kg89ctY0R+w9VLuyVForqYCCbxylPUHL9MMuPfBgWnw=;
	b=D5wbn2bc96YBD0fgkInIjhTNc29BANwtuFkB5AY8ofFCtcyfvR1tZiOVEhfZgcaQ
	mTuXQJwOJs8kH/sjS2Dj9xlGUgWBhygVAgJ/bo8yJTLRWBBaO12+qx/AaJuZ1ONxr0K
	bnBZ7gtKNdYVP6YvTbq42xpmt4N+FDHAZUplK5ws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647839785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kg89ctY0R+w9VLuyVForqYCCbxylPUHL9MMuPfBgWnw=;
	b=ZFLkF5NG+IsZR3HJxfI1y1zwE5eW/Zsl1frxyKRIwutOCtSrEtLhYKkUnS3haufG
	0FKM3BahRpM4YxA0/6JeJgnkXmCTq3GzznFQOrELHg53e/TejBDSY6gfOUm7Q6OIp4/
	Hq/vGe8luyir1NX6HCnAxosdXGit4oOGMrxBKoHI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faae7af9f-6a2fc861-e96f-4f51-8d99-9c6e28167a09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a655077792a1c9d66c4ee75bc5ab406d159e577d3e4cb784279fd2e17d3b422
Date: Mon, 21 Mar 2022 05:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647839784
