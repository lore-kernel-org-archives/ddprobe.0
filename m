Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84E2246AA
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661124052;
	h=To:Subject:From:Message-Id:Date;
	bh=AI4ediq/nGtm2WTKqEaaZcwhcA922YamsDfnHbilbQo=;
	b=PFQfYETEXkfJ5pKJi0XvYRTaxr5hiQYTI5/OIXDwBmUFQlWquPxaRhaRjvLxvQFd
	qPtDGqiezN4I4vTV785OpQ7himrH+aMFuWNudXPHLixe+b/aFpIzIVcMGytg/iwstVQ
	VCSDLM/NZC+gTiQUZ1lP5MidkH/IXHML5zP6T0GA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661124052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AI4ediq/nGtm2WTKqEaaZcwhcA922YamsDfnHbilbQo=;
	b=aBXPv76PvgCJMRRKSO+92pYkB0yU97kR1uGH8EWx53qwCfo2mNluCzBPNdH89eRs
	6jHIJPaRCMvrZqAFtxn+q0u32YB/RXyBsvsQyHtIoEAdiQFzLV1mGv0q72b79Tj4vpJ
	+5h18ylZtBMUHolkr2vzSrNCbc7a4i4WI+hKWqbc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c2b58664-ed690e95-1195-48b9-a045-3861b414a6f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95355f9805b07cf0dbc398d8a313fcc28543d502563d6d613425fbda7576ac24
Date: Sun, 21 Aug 2022 23:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661124052
