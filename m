Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDDFD7D
	for <ddprobe@lists.linux.dev>; Fri, 11 Feb 2022 21:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644613218;
	h=To:Subject:From:Message-Id:Date;
	bh=Q+3G3x3NG0ZpgdffOcoklLZQB2Ts2r05no+SVp7mVuU=;
	b=Q3xSu+rDXIos3QBDYkQQI0uIPQgVCb/a1ryclNGJt9m7ZNgZgJHuWM74TUFggBKG
	SHkaiMD86vh5urSseGsoEBWD0yPVu+yKF2EqCxbe7JKfuTVoj6x3r3Cry53qPOQEAxE
	PAj2H2gd+LGtcD3222eyGC74V7snZBDfPhTh6z6g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644613218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q+3G3x3NG0ZpgdffOcoklLZQB2Ts2r05no+SVp7mVuU=;
	b=h+AuU67Ypq0OCXuQCL9LVt0NHP9a/CQuAXK3UvTc166PckeUktv0Pcm+e4C/GGvj
	Vkr+kO53Wni2BSz1xelj3O8owWeTBd3g1kMChO6Xagc8ZTLkqiTz1pxaAyjbjMt2U8A
	Ge2wqmlCvrb3KfXr7v49nS4iPTiWSFw20sAN6WGo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eea962d24-d68efb54-6a2e-4758-826e-af1c834da0e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10ff33ff329d758b96542f67ae4bb8cef2ccb2d9984d54e4c3319463ff84c0c5
Date: Fri, 11 Feb 2022 21:00:17 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644613217
