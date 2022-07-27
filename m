Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70FF4ED8
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658926252;
	h=To:Subject:From:Message-Id:Date;
	bh=WG8KsYdx1iWaDvZ/zU6A1t+jSw4lnEBJEy49YToEvwM=;
	b=fVu+WnTDOBHbjphgnwc7iynPPH7STwKZRfKsHbv/g7slFx2SYgdbGDkoygoyYZ6p
	BUIKKbhPhEjfN//xSThFIZjQ6q8qb1ucgQeBROjqHMsqCB4K3G8OFtS61uH8TllTTmc
	7c3l20h77OSwq2wt0i2fzwsAlJaLXPB2cc7zd3Gw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658926252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WG8KsYdx1iWaDvZ/zU6A1t+jSw4lnEBJEy49YToEvwM=;
	b=fp9mhVJ0onAaI8G9EsZv/vmGJqSWdCL0qzI1FJ9h1+hxrgKssy5Xua9uAwxwdA6T
	u0hv3ys3l854/59uz3jmZb4XKQQcjx/HCLayPSGR/z/m6J/aFCsB9z7i3lUeA346b23
	GNAqoIrSuYaboRoi+y28Pz0QDLwqByEh1ZldmHnw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823fb5c24b-54f70e2f-569f-4e6b-bc07-2d7c2108bbbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff9cb570c0e891eeb93711b863482a58b5d67afcb7ed8e6278494f25c3b6a262
Date: Wed, 27 Jul 2022 12:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658926252
