Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB042F22
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659107452;
	h=To:Subject:From:Message-Id:Date;
	bh=UWtdAPGZpVvx8S9B47MxQZWCoLU5MNO1Y0t/SmUCZGg=;
	b=g1fh9UwWECWoWTK9MW5zB+k548Lq1PQ+7NQmuVHDjnpcU5cwj5BXc5Wd55d5N+vv
	mTFApMawPr9bomHAmZf8Alm0+T9/Cf7RRc3yTd9nrkofwmcR3GwyJnlicaPpeoqePMu
	Lz6LM8oWmxSeqpf4LBrHeEhZHE2E0qUHFVzpJI8w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659107452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UWtdAPGZpVvx8S9B47MxQZWCoLU5MNO1Y0t/SmUCZGg=;
	b=MslAzPnMHdYLA7vV4OQm8eqkbTsm1CKZitx8W3Km9DxIFXuuRyL19a/GxF0oZfPS
	3YZf2ivCX/HROVZDJryTB2sIKYzJXR1+9E+QHzj6Xx6Tfxf0GlDZjlHHDRL1tBcoZo3
	nEM7rCu2xKSRfHttnWpfupoGeAEIolC15X3wr+0w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824a82a67a-459d416b-cad4-40a1-b461-af803de50c45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad16adebc2d247899b2ed059c7131c85f77e0978478f519a25de6a4d8b1796bb
Date: Fri, 29 Jul 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659107452
