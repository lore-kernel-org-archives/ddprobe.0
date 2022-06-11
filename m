Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42B57C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 17:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654969259;
	h=To:Subject:From:Message-Id:Date;
	bh=4nFKkmPiVcIGM/Fg+9veuF3Ly3i297uVGlCgIgjOZlY=;
	b=GxGWvVLWgitu9Q6rctH5GZJfNh3a1Vp66K/PlhSPJkQbtM9TyMBqrrNRqX/3Wsad
	oQcT6CQIo0BmSp6uBUqb0Dke5Ykr47SgC/UL74Agihxh5GXgrqpA3rkhXtDU4JmgO3Y
	hACgtHXSu4bOsrKganAhpPRFkLuCNrY6cIb9GNdM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654969259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4nFKkmPiVcIGM/Fg+9veuF3Ly3i297uVGlCgIgjOZlY=;
	b=BJhz3yGLsi5F6aYLA2ulPECHHATG/FeP0mQ/ejdtGCcP8jfWzTjEOMgrpdEFejuG
	SjSWOWhcEE3DBzTX5A1+bu541g0at+PCxOiHMZRbrDXBAyca78xtHrFNpLubRcuKHxz
	dI1Dk9j5IekTJnbMts9albEcWLuNTHEWBsPEykik=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018153dad4e2-f6d8e91b-cb9b-46ce-aafb-5cf52c79d86f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba7e95fd554fc07d6326fd5f7db892b8da2ffae160e5fe3e1e417963051f3f2c
Date: Sat, 11 Jun 2022 17:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654969259
