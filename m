Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E14CECA
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 08:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650358318;
	h=To:Subject:From:Message-Id:Date;
	bh=P5KaFmlvoIfCdmBU8geIXRmw+WN0FQ+QUt7hiyVJ9Fg=;
	b=OmgN34yFUu5LNeSrAMgSKGvT2hSe5x6XhGbZOnFY3N5e6j3Hbcj2CCAHiTanDEeM
	18DRyH44lKQyLtIKXvZP1pDOk47DCpPj5zu3P9HLC3DtTA8BkAkts/sJ3EH6DR+LmrG
	26KmIc5ifQ7tJq2ZR054B7pNosk0wRThhyUepYjA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650358318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P5KaFmlvoIfCdmBU8geIXRmw+WN0FQ+QUt7hiyVJ9Fg=;
	b=KuQP12EBncXQJbaGkpXBDNg8x2oiyz1xPYXdzCubVKXgB48yBAlcMzIxA0ahum8v
	kI/AYbP13BwOeAkkeHsQoMmFH2BYXxt1H0lI5QpV3H1VN5a0gLhHimDz2x82SPIuSRl
	W3RDTJwCJAaM77nPPFmNhNE9Wmqwp1beOjPoVcb4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180410574cb-5a348f92-4f96-4c66-9403-f9ba08eac105-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a889d6d2ae29d66d16b5892882d0c549e5b686a6c38a632dedf0c106e026cb0
Date: Tue, 19 Apr 2022 08:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650358318
