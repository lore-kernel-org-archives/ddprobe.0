Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EA0C28E4
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 19:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645040485;
	h=To:Subject:From:Message-Id:Date;
	bh=3exYESFb9NgrNXGRTQiFGUfBFdrcieXCbOcLqap0V4w=;
	b=fGsGii0PnzgLFbUMy9CkeEbkhHkRfyKMzqvamqZ6OIZYoEGK5PNQgcy+HBY98mQ3
	jtMTgTYqt0QZ0ccAkxRzeSXaSzy0xGNjX7ehI4K1BCHrX/uBPCLlR7CGuDxcqRK/5FY
	VG6z4ab2uP6Vol9pP50+s3sdskO1XqAaedWXqhBs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645040485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3exYESFb9NgrNXGRTQiFGUfBFdrcieXCbOcLqap0V4w=;
	b=PIzN2v5fydJRWy9K2Kyg4qsBjdITzvsi68q0KLZG3i83K5P4BkyLuNlIrnPevAlx
	YjER4ETfRglP/usEB5lqqAmJ/2EOJeKjBt2qh+xhzQAsGx6EIyYnia5Frizy20bvzKc
	aDrGc65bZPrsEp8UB0WPedBxD7JNiLtalfT2Mq0k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f040dc1c1-94dee648-c35a-47fc-91ff-9a547160edc2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 378b07c0133def2c1f45c277a337cdec46b7363d13c2af465d78904d9315f048
Date: Wed, 16 Feb 2022 19:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645040484
