Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA027B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660850452;
	h=To:Subject:From:Message-Id:Date;
	bh=i8TewpPp6JZ1lUH6sABFwMLedTw5IbdCvFi17NuggBs=;
	b=hSTDGd48/z/CoA96rNCGlZ0Jd0X5hOWaEjQ82N31ddLH//vDQOA8QbQPwJdLf+Oe
	jaaJ5Tj/xMEQIgxunpZBdGELR2JPfu1jWjaQKSrQ+B/OYjSs509+HSD7r5K+69B3yKe
	YK2ePYKzOa6DyNJKnhFx5/sMclHGg2qkqKGBX2yk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660850452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i8TewpPp6JZ1lUH6sABFwMLedTw5IbdCvFi17NuggBs=;
	b=MPn32US5ul82ey/CdlbUaf4l9F7IRBZO4fV7yHwFg0dejOSpPpBQD+X70x5HHndF
	er0m26WG77LhFv9sfqVW7/M1KUcBbEXOZo4RK8Knlv4zlWUp7zVDdMvFvOYztIS2B7T
	8B5FN6qJ4vit6rF/Dh+GmMjIb4VYzi9dm/rIbEZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b266b852-cd77be44-5d90-424b-a89c-af32b172a50c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b9e757a256bc877d2c55aaa227f704e670db3b53f91d8823054efe649e758d3
Date: Thu, 18 Aug 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660850452
