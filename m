Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDDC1FBC
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 05:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658294812;
	h=To:Subject:From:Message-Id:Date;
	bh=GFirOrpChBs0XVZFfY6CunHGutAmfCcW65WBINmWNrI=;
	b=a/3WxIn5rzAflyeH8MgwjCNAZXB94UFKmJEDepDyMr0rjR3Xka63HM8KOjDFPcLI
	yWzowvOxAmituBDV9ZadD21Ph146Ad+Xc65Ly6T/hErwSmRoiRrHyoSL74XEWeeJrJC
	1qR3ilm751R1jh6ArzezH4BGsL2ayr/RExaLG+QQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658294812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GFirOrpChBs0XVZFfY6CunHGutAmfCcW65WBINmWNrI=;
	b=IADtmuYS/FhPhU4bG9EzwV98WfIuSzzLj8VZ0U36I2ds8Nue53TlAK81xpa0Y4LU
	eofdTdGcaPr+zhdO5x4WD2AxWjGSFyhL1oS9kRqH8dvd33H3BwRdlYWJdGh2yJCuNZr
	k4yHQxhCW/x7SfuIHNEwyKwIZsA6dCiXfKNjOqv4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821a12be61-ae4a4b53-76dc-4b06-8e4d-ec77f4a05998-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40c0131d5eda0b22b2c9f49e3535dd7c1320256fdb128a7a598da3c7f3d68898
Date: Wed, 20 Jul 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658294812
