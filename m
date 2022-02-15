Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B398C116E
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 04:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644899785;
	h=To:Subject:From:Message-Id:Date;
	bh=EYMdKEn74lwOBg1/9RQE0MUYurpkWA1d5p6ePs0xrr8=;
	b=Q4YL/ktBZASJueKwQJ1EQKr4/M9GUrnfG6MfvQSbwthDx+jrVdAcQ3PgW0pJjdNX
	fvBPmSECy84Q+IXPNbUfspHpRAxHo2SgwxKbN0lEx82O3zhGS1Z+X+s5EURMk0nvaF3
	IpLoluon73B0pka5YMzcs0fqFnDRe4o/WwIrodvc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644899785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EYMdKEn74lwOBg1/9RQE0MUYurpkWA1d5p6ePs0xrr8=;
	b=eJAFFy+vrkK4bx9pq+VFcOOaB42LKT3wRvGX/6v3JjeJdxBb/hD1oWJBjmnnS2PG
	sjDUnclsoWYWYKazEDPS/UVAAlAZgIndEXbnfjaOq3dq1m9TXDSp7GtL3fIROVCYBEl
	kLbMwpBaBC0QoAZmNf5i+k4MazItZ9TGsVrqPXi0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efbaad845-20a675a8-d872-43e1-8f2a-412c0983abb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 947a6f852f88856d623634016f2dc954909619ae93439da22c13b1746290bf8a
Date: Tue, 15 Feb 2022 04:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644899784
