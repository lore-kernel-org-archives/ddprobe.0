Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E2D1FA6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 13:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655992012;
	h=To:Subject:From:Message-Id:Date;
	bh=RVRTIjqC0dJ2FSsCvSvqlFIqyv1qTcf5jw7Fnoz8fjM=;
	b=TFPg650jwHIB+xmYX5ajxLAX2mAb4MJLbKCvaCIc4ZVAvMdOCn9vvRohM8ZC0yWH
	VgdoyMLctN4cU+6/7/pyxxy+k0V2MiCfgm/U6Ie7k8IMOAEFF4NZHfAOIqXp3KAbeGc
	f1Ix/6X86LdaMKzGmHMVVR8kxT0l2MGNKpQuYPb4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655992012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RVRTIjqC0dJ2FSsCvSvqlFIqyv1qTcf5jw7Fnoz8fjM=;
	b=GsfM4FSqe5JCEezTAGFU20O2dQmwoOv2pSVuc1IehRpOXOT4Bg0wywpT8ZG9s+Uq
	EyeHyCLgCmJgAk3fTknVt2ei+XiXrITcU4fh7TSaKnTaz3XE5vHESxdibtCV/aAcQMz
	dQiLWK3zGZRnNduS6AeNaVkNkSOG3OTvpnW9DjXc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018190d0cde0-190e1111-6ea7-497f-b595-af91bf7edb6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14bd63a1ef2d975d0240cf39943677b3a9ec3b23eb31ff0822e4f9b6d0a0e2b2
Date: Thu, 23 Jun 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655992012
