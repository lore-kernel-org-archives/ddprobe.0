Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD84362
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 06:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657175812;
	h=To:Subject:From:Message-Id:Date;
	bh=pLvUBgBo2d9/EXIgIaS2O5EAJmCCWnW+Obp9yq2imDQ=;
	b=hNnGHvFX3L2y1A8EwoFV17xlFFaj6CL4bFuWhv9luWkQO2lzSxOh5vP0QvO/hTn9
	FUygYBj2HBCh9McoppLYcPveTo/W8S5vEBLstHEcQIT7e9bSmYDO/rt6N0FaHhfb6Gr
	IoyDPTSK1/t/u8D5AVtotuHvycy2dnqRoITHh0Pk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657175812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pLvUBgBo2d9/EXIgIaS2O5EAJmCCWnW+Obp9yq2imDQ=;
	b=EUXenyGKoG7jjBSxhKn2cAkjrBSmJcVmhvaFJZ0pALKG/7SVtaue398XrqLBx9gI
	QNGfeEaoR6Fx6LyJcF/A75sf1UDNAYUY0oWtQSWnBopcV8MMY194oMyTYqdubGjYmX1
	/qpd0EWN6wHfuPw2PawPKRc4b6jUwAJ4rB6LOm8c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d76028d0-935a80ba-a8b8-4de9-a9e4-2932fcf9a086-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41eb04a36c8d89e56997626a47cd6e573ad0ab82426d6f97375eccc35e2f04a9
Date: Thu, 7 Jul 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657175812
