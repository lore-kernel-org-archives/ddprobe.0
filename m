Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9661F66CF
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645556784;
	h=To:Subject:From:Message-Id:Date;
	bh=9i03sOViPq9+FS2fLBy0ZKIb6ZCQRflJkTvjdOhtL+A=;
	b=EzyzutMojMpvsRW8YAfl5xQ7m0JCe5Mq4nVJRoWAEaAKbMr8nTy5EDcIC7y6D3jP
	0/PBkvOVK2IOtwHiUsYJ/mYXjo8MHmWYj0uEhk0MREOtV3H3rnGsvobdYUwOWH5Ptk1
	tN7DpmMo48IPQawaqkrnZaN/NhyGJdKM2qFeCuM8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645556784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9i03sOViPq9+FS2fLBy0ZKIb6ZCQRflJkTvjdOhtL+A=;
	b=E8AlGqt3akKM2I/ihx3O4St5374SPZGg5JXcD1F2BPoQTIkQiXwrlraf1VpIj0b8
	phuZbjpG+ejluwGIzliKwnmWptj24A0ebM6i2lH2ARLxQlXQ+39FDOuQPuNLOzsk06t
	TV8dIGqX3t0/wRTVtqi9Hi/+noRbZ4PZSiTEmLSk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f22d3dea0-a3a53e3d-9399-4966-9e63-6fae6c30fd27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20cc635cd19b201fc0381584f9dc6510c5a96f3344778a3fb8efbc7af128e2f2
Date: Tue, 22 Feb 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645556784
