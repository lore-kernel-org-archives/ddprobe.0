Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D2723A0
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 01:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657591012;
	h=To:Subject:From:Message-Id:Date;
	bh=o7f2FvHqahSvw5E7qvQxOJV8hRrOIXxp3JvaOX6GDHY=;
	b=MuzByIIb+jFW2w+YaOKSWAyPc0gffJxIJgwjeU+RrIsHf62ufMXIJRIZsKgIF1uY
	rg4aXp7Hu57ES5qsMB0zKRIUEVLYRzwb9LStjc918rAFIDRZk/7JWXpiMufhwACzJxv
	Hn4SWyjmXEhNL73TKBN3FrIqq3m/U4ISaLhcH8Sc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657591012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o7f2FvHqahSvw5E7qvQxOJV8hRrOIXxp3JvaOX6GDHY=;
	b=I0lIfq0q3h3GBqlLNo1SLzajsr/LRi+GhBS1azcPb3GQWrNMXLBuOIkbVBGYtCCO
	AqXCW8i2/djaWsL7Y3DzmbI5XFMD7Zin42wALfukbbJbyjoR5NSPYk93taD6RWLG2Ea
	JXZcmgKugZK81xIxWjuTwToINxGLDPba2r3USJTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f01f9bcf-eac07ffa-c8ce-4d66-af94-adb0fe6f430a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4816af2d3304eb89e4b06e091045bb8ebc8d9214f6fee06b69ef28b744ae55ea
Date: Tue, 12 Jul 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657591012
