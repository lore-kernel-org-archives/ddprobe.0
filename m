Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6F015A9
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660819252;
	h=To:Subject:From:Message-Id:Date;
	bh=1RBc69wejP7hN+d42NsMvwnFihAuZ43iLloIQP9bMT0=;
	b=IfM7mUGfOIeAfqVedonQ3pVdvVCAuhyWI8i7/gN6bUkctG/K53TmXPcGvxTYJ5bJ
	p9H0amX/1lkEJve3O8r0M388ggD5y1fUazIeFE25s2E+4VajFILAoRTtV0l6lfQplG1
	lZgV3JoBtRrxSpib+YpuiTUI0To9psj91/SdZBV8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660819252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1RBc69wejP7hN+d42NsMvwnFihAuZ43iLloIQP9bMT0=;
	b=V3KxbeYpVsF2uRtMCKjFoMoYoxA05fqzJVk+a5qqdy1uK8cZRN5kXpDTuF0fLJ2d
	5RD5tqbg47DvrjoXQK6KrDogDj7xIgTjzByKjO97IxrCXxiz4T97nE8yegJ/LlIQltA
	GkIWVkilbMzKm6j3tSzs7GQWSo12fKUr9W9YBvFU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b08aa569-8b1befb1-c0d7-4eb3-98aa-a7b0d0034594-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9a3add7c21bcee80c9058efd08f5a30292db859283185bd52b323c1a8bd9b77
Date: Thu, 18 Aug 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660819252
