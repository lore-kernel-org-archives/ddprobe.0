Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27AA181
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 00:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658708812;
	h=To:Subject:From:Message-Id:Date;
	bh=NzFVJ2DcW7/6Ku8jkxmI9kouSLxd8TMTGHgbQWNB4ck=;
	b=Se0dzrlwEbrVQvrnf1wsR9jxSKKVO/fihp4g7NA4ccgw8l+GYYwQp+xSAM+jAvYd
	Fv36mN0vhPgzd+k0VwXVVix5TS+4Bg33PEsCUefTvDjnmops7r7gNVcbU9G2eVUvbMl
	B/JpEyVRWFG087Yiazn8EwBDYPbdKOJDE33rQ790=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658708812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NzFVJ2DcW7/6Ku8jkxmI9kouSLxd8TMTGHgbQWNB4ck=;
	b=VvFd7mAvcjKvt6R98g2gRTp3p9+ecIxdMYUiJbJfb/xDrS7tQ+R46gHjXIGu2xEy
	w6iXleF7u4pHR+xjjMRDwQ1oaammeKiLmu9zaXqB1zPwo/Zpf3ljY9PnvLVRyUKxlsr
	cMHFMrFtLif52Lle4y172az4X1JfVucxF7/aIunk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018232bfe1d7-f897fca5-a095-460a-864b-ece8a400b142-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f95b91ab2ac69ad583aa0b8b2bfd35733bdb541ce81e2f4c6921f514230a962
Date: Mon, 25 Jul 2022 00:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658708812
