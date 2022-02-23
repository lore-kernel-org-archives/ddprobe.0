Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6636AD6
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 22:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645654584;
	h=To:Subject:From:Message-Id:Date;
	bh=R0D1AcMV1RfSVhJhF7X0o9ukXDKHKAQIcYbAqTCnfjY=;
	b=lpFzvPtPdzQbjwPpXivRYr2Z/dLyN1nWzldiIXeqAkwbg1+gO6qm7BB/J0JCcb9k
	r4fEIQlX0TehFeioPMN/63tY03dVUvvXWXb9NM6ITzZ6nYW/zPb+vzuNYAyp8LADqHG
	tK24s0FLh6V8Z9KM/RStpIIihBSQ3nHT5/MTiCCo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645654584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R0D1AcMV1RfSVhJhF7X0o9ukXDKHKAQIcYbAqTCnfjY=;
	b=lVuh83vPxSYPPeQesVsmg9S2zLl7N3CFh7Ac2zMvgvWi1lOV+On8OwSueZB+wxwO
	Tvm1OOvW1hti/56AWomFRh7N7ZTW7TcgHrdN9Ssc9hqV3SkG6p+DHmkQqq3ot+zxhbA
	y++1Xt6Mw6pbM8X+TLxOtZjN6ZMf/YLR7TZLJDME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f28a82e08-be049651-bfa1-4f3d-9ded-db83e8abc7af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14120a0d73eb57fbd2a62389cfdf938d2efa13fb391b530dac3800d59132d431
Date: Wed, 23 Feb 2022 22:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645654584
