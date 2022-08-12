Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3F0399
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660288252;
	h=To:Subject:From:Message-Id:Date;
	bh=OvrBc+PmDcvaQocuTiVVdb6BCiFYf+9MZYxhb9ULhNE=;
	b=aeZd3+BnF7ExudISGlfMvhdO1j/SM7iGU65n12IsFeigtQxSFmtszcCx2e10ogxI
	BAU7vnliPzbIZ+bvq184kf3GKEg00CeNtqCpqMQ/eK+Z0snw/8/7g+ZCjhR8vveytcT
	41Q7EOmiSn/jYg6YWGRN5jUssCAAH0U2j1gfbUJM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660288252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OvrBc+PmDcvaQocuTiVVdb6BCiFYf+9MZYxhb9ULhNE=;
	b=kvRRzXtU8soTS1tRZQIan+emUWXRsE+Qp9SQ1f2ea0W1JpIGQYH41/L+eQnE4sg8
	l8Bne6v5r767jXTuGRqnEZFWkHnxrtTViQ3H3roEVIrPY3EDDT8hEhIxRFfrbrBKSMF
	GDOPRNC/1DSuZ12Huz2qyi+yMMne2f3gH3JEo9Cw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018290e43a6b-a528166b-916b-4eaf-8ff8-f3744778adb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d8255d40587b9b46341c7ab1e24f5ae0b511dcdd29e564e8b02e88c477c82d3
Date: Fri, 12 Aug 2022 07:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660288252
