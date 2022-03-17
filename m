Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5434A84
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 18:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647542785;
	h=To:Subject:From:Message-Id:Date;
	bh=gpy+LVjsQUVJIH9uMHmiHtlKhflHvMuOh03GHNKY+rQ=;
	b=CpF7XwnF09FPidvBMmLF7J/NOMrJB/5uepKNwv8hMOXJkC72XjnFMLmxt9YJxRRT
	ht0rvHcHvM2OnROIlaNFVfaiKUGin5kazv8bIS88gsE4uR05IBtdxF0m1AvcI7cTZp7
	f0J0OWCwKR9ObE2UCf7QPP0g6CMR6WAGhoFpvkWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647542785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gpy+LVjsQUVJIH9uMHmiHtlKhflHvMuOh03GHNKY+rQ=;
	b=P9duD900yn5qsLBKoBkews8JOGMaZ3lrLX1j/4KkW1a9kDOiR+h/7ps0S1mwNDRV
	TshHL2cYmYOiyjwoZNXL29MC8eqFZOz4BIaEXMkeVy+pPYiejKsxirSiNSZWCfH52P4
	xJtj6xOxYydx3+hYujAVSFBw+Y9zuGYQTZY28U3Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9933d3bc-ab22a450-6772-4c00-9eca-4397ad3c0470-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16500327cb40a968024143b211b0530f0a862d528dddfb8937cb8f6165fe1af9
Date: Thu, 17 Mar 2022 18:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647542784
