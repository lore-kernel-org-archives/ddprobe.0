Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4EB3229
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 23:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656371812;
	h=To:Subject:From:Message-Id:Date;
	bh=OpaNEbI3WxdcGhcfg7hIwiNxUAVo01l0PNI7OMvSjPI=;
	b=XiT8NlWoh9T1VnDYbM0udZzEfC1+b4PVls/Hsw19OqSAoq8pTnvOv6epAeyclJxv
	ga90UTa127NZFKtIKNjVpAw/t/Ob05hYC7CVbBpW97w9rpOPv8Oucd5jm1Ze9ov95s3
	PeB6ffvsO46H5r6KFwEJgMvXJKYbLYOzdlGc5JCo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656371812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OpaNEbI3WxdcGhcfg7hIwiNxUAVo01l0PNI7OMvSjPI=;
	b=PcZTTjHQ68McemEWWgL0m7kvM7dBKRVbJ1JfM2SRjFhyDNXu359KU4KZs8qqk32X
	9frnBfzPyIrWQtuDhpXBn2mFDBmuRnIzvJRSAuMAzdNijwfF/UFhMs72epVOHva2jYJ
	vNdedcub95R8HLgdroVUxvxoJ83ohSq2SXaRJjKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a77417b8-7a6b1fc6-44d4-4067-a96a-49a5b3433e76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c3ab049a6f61ce88205239ec444f354d965469f23ae6d73abec5c2b58f4141b
Date: Mon, 27 Jun 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656371812
