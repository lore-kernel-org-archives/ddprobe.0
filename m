Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A18B1369
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 19:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655061779;
	h=To:Subject:From:Message-Id:Date;
	bh=RwLoh3zAW8AHp8c4nC3jAezTCGnY2zri5fjufqXei70=;
	b=lFTavVvGapCCrzQEiELGomxGIkG5kSsa3Ec+0rlLoedRIB/S8CcOgCkQkAa4Zz4X
	BDTqDP1TsUdPPpLtvVk7zQoKoJ/bvFmNdKN6Nl4xanT7Gr9bWnHU+y1NPtmk+ANBv7A
	ewiOGkJXZFzOxgC90+y3XtGhsz3CgR0XQwNWM/uE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655061779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RwLoh3zAW8AHp8c4nC3jAezTCGnY2zri5fjufqXei70=;
	b=kiDzn/bJmX10rt34+TFarhsTA+jaxvbbmDJA6VkFABnhxUq9RGZO8IpTLx/8Dzta
	Lr/0Gzz6U8C8xjyKlsN6bS3BSO5SJ9duzH2FvVSq2MmsA6ZMSyUkJGr5qi7u8ebCJBF
	rRntcHsOV5zpBbe+tHvZ9iP3uGErN3N13nIlUbkg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181595e9361-2df47a8a-1134-4d8e-b0ad-c0023e72dd2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 413222537272e82e24d37fcb3dba461784930bc3d4cb69e49e008ba4fef7e8bd
Date: Sun, 12 Jun 2022 19:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655061779
