Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2175A1F
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 18:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646938285;
	h=To:Subject:From:Message-Id:Date;
	bh=A4J7iwbfuuY0/xAxpNo83EGMykWBtRuRCcQyTFx1Edo=;
	b=dLFTSh8YMq5CCfNzh+AiY6IUozL+q58LGayL8lztHiXDxWNIN10QAPQnFg3Newmt
	VlaXVbsf6vM6/hdq0KfwKjzJgBA+su4E5nBJ+Jmh9e0GmoAap2Fhk6cSoGxAz2Jr4uC
	Il2vhdJAGl5VuN3RaJ67Thf7ymFxAjj3VGZntOeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646938285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A4J7iwbfuuY0/xAxpNo83EGMykWBtRuRCcQyTFx1Edo=;
	b=B5jHJ5jQ8GfsmzN5nwPF4MLWMDEdGSkqWBKjp+mKm1g7O9o7/gtQ/4/RCSoGNeW1
	AWI6E5zZ3mH4AO0kXAoYze4zOjpKi3SwBkhFVbnAzsNugyQ295vrtS4l2InpjbQoslF
	CvnHCHqXhmtLQhiudfHNJkv/Ma0vyh9cK6wic9ao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f752be35f-91d446f3-312d-4a5f-be30-4f9a214ec174-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d6c3ea4f1392acbd4ae8d3a30fffd9bcb2ef1d6dbe93ad046f1753d1ce0f0d0
Date: Thu, 10 Mar 2022 18:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646938284
