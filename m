Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C75523B5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 07:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656056812;
	h=To:Subject:From:Message-Id:Date;
	bh=Rj03FqFIZwhMEkCFsuBrO6xkWRyXfyF9796e+LY5yRA=;
	b=Umyw+a4iF4tqE4GbsQH4yJnf/LE7ydBUFe/cSHn0rfsgvYbRaE8w9SJ+svg0rQ5z
	C8R/R3H9PakoMP+Y3iNsHV1Hpk606XYltW07EfWg/pkbm2aAjLSSPB/3g6AB574yzxX
	6PZJN4BYwhnzJRDzC1cQ2VKwvB7U7sxSo6sVLBxQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656056812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rj03FqFIZwhMEkCFsuBrO6xkWRyXfyF9796e+LY5yRA=;
	b=FdtSn7GV3LSeR2aliBM0gsTGosmI83M844kyjSbZ04Vxp/RWT9TvRcLEvTFWzasu
	+2fa/qb/u0GvddFnmuaVYNuT5HSHqvyN6VfnVneeIWsDLOnp2wNJSW0KkBjooPGreQc
	gHsI69ZTRlpAyYwqvW0QEfUB+LOOIWDyMiijasEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018194ad930f-8a29a313-ce6b-45e4-be36-2418b399a1dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c676452e210115e6aaf82196ee51cedb6e2e417f7b73c9b0759544c2b31559a1
Date: Fri, 24 Jun 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656056812
