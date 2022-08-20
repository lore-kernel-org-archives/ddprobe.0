Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA2320FF
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660996252;
	h=To:Subject:From:Message-Id:Date;
	bh=ks+TMxHQALaDk0Lxk9b7QRdbADgpcpxtGr8V4VVS6S4=;
	b=kBV2oXQkHglChKVrMJR8Cy6cj/MeUDnAryL9X+1o4YpGT2LzJ8KsRAsvMVXfQenF
	xc5bALFggRYQW/0W9titp1tnQE4PZF1RSvKIezdQtIFPCJZRB13SgGl4amJa3xdNaDO
	iws+9/yWJ2H3J/+Ieia3qTQgGhX2CbaQYXRCX4hM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660996252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ks+TMxHQALaDk0Lxk9b7QRdbADgpcpxtGr8V4VVS6S4=;
	b=Ft2xWVOsJWDeXbxOABfA4EbPvDBqtVGL3HCQL65bb4by/2R7gl9oS3u6/a3kHqvx
	drRgd3/NJxhu+Tf1IM2cJD6IS70XnI6M8gozkPq5VLJZ5zkLoYDmgmxDItJP09ivbOG
	uA8P/TzXaWrIMVgAYh8pmXwl26fPi2AqZiVLtqhA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bb1773b5-739c840c-ee64-4339-b902-792a04c524ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 873b78438804257bf0f95e7c2b300b1dfe8afb564dd2fe667e5ad4fb38d18a17
Date: Sat, 20 Aug 2022 11:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660996252
