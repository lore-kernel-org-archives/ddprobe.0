Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4B404293
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647973284;
	h=To:Subject:From:Message-Id:Date;
	bh=AlaZ5YfCl0OxTqloqwslz8PRaGGwAAuUJNYvpoe25GU=;
	b=Ax4aEKAFExidqANZK36L91H/Ts/uzGqeGRB4S17LuPGCB+f+qQMF8RyBPnDlRVAG
	4N8lae7wTOFuBG+SP6hJ8HbMNXY4ew5z8zxv8u6sfc0KjgMFZn4biv/UVPnDcJ/BaAb
	ewbNdchmgmVRSrDS+HqxkLTt1GXCrzq9o/UrEqvQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647973284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AlaZ5YfCl0OxTqloqwslz8PRaGGwAAuUJNYvpoe25GU=;
	b=SffutpYlNnqCP+fyNeqHcGtBFo2A6gFmQWkFkUsqQU8GdR2nQmedo/+cfIcA6nE1
	8zW7Wy1KfFeHRLd8IxuaZsXpRiGkYpuWMr+1gkNqHKF5Scma7rcoYrmeeDy0+a71GTG
	1rFD0MPspJbKo00JTeE1LgbWZ++30Bc7bTMf+pYM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb2dcbbbc-c70b95b9-89f5-49bf-a27e-8aee203de2c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a95c348049138a980dbe052b09a83319179deb09c4811f6c83f199a9b356f81
Date: Tue, 22 Mar 2022 18:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647973284
