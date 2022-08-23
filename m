Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5987FA3B
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661236252;
	h=To:Subject:From:Message-Id:Date;
	bh=X7+noR1hU0MzaAMYvxUTeDHpuJeSghlU+cqtrTgTu38=;
	b=jWaps+xhQNhhuZ5nOgLh8fgxAIH3TrgtIAdpLdiZ19/zD8phIT3bjlLmHZMB4wZN
	Cge9WZMGpQiS98FdNMPxEZ/7ECnkkbEUt8HFKls9m2aLtFwepmoshYXopxqHckC7JFM
	bLGcoLltMfyJgKtnLM37jRZlwu89tW61SI6lVxqQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661236252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X7+noR1hU0MzaAMYvxUTeDHpuJeSghlU+cqtrTgTu38=;
	b=DUAXNF8RSl2lKIH/iB3dKBQraa9kXQQX+aNhlJ8j6Cix6OHHSvIHnfpVbkVz8EjT
	2IZUIRDeeCJ5lSoM9h+WIyFHfC0+mWG7Z81yVZWkagv8zsoVbR8Si8MO7LbVfwSqoJZ
	N5HdY28vscVk0uIb5HkwCONycrszv5ieCMYP1l7s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c9658fe1-17acc973-f957-4200-925a-007213155199-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb0d0e929765651578fb25b62879a1d31c22af1203d625fe940777a046c4ba76
Date: Tue, 23 Aug 2022 06:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661236252
