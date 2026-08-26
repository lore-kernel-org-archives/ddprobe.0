Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC43351C02
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787785834; cv=none; b=tY38JukXz/I+fXLaXeVOHQ4gX7eROQ2c8kKBH+fqPWSyEzadnRaHhIaVf3LoZrW7phERXqLt5Hzx47oHl/yDKQNBP+4yug8ZofBpvAjXs3oPpAAj1Cdxp8ebm4qh6FHeJqrCeKQKnwvdvBmDQZUR+8Jz3FURg2F3TbJiiCrBecQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787785834; c=relaxed/simple;
	bh=0u1P4wAAT3NWwwuImOsniPydMYtbkJh2jwI5tVEAecg=;
	h=To:Subject:From:Message-Id:Date; b=Sn12MjXuOeADsmrOm5YbqCv9N6Z/PbMthqzRPQPbe4ZC52UmEome61fdUWepJKUS7OqJ5XDxdzQl6Mw/hcLU7bs9tflhVtRc+osHIb/a3Xq6kOFtbUAb7hlrf/7wDRmAlHekd+LQSPO5fVedMbEU9tkYg0O+OPgS4cvaFmasjTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UK6fbVW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UK6fbVW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFB8C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787785833;
	bh=0u1P4wAAT3NWwwuImOsniPydMYtbkJh2jwI5tVEAecg=;
	h=To:Subject:From:Date:From;
	b=UK6fbVW3akY2Jd8bntSxFQ7XsZ2QbTj6qTkavfcRfy51l4aT0WI8oFuF+Cpb3iy0h
	 UFLg0nB+HCWzAtwfiFc+oZ1dfKccf/rhuPSKqjCFzNSRsz9/2XRVvTV93usy4z6bAI
	 2pmh4IkWBvkoDyH9Q4CLOd8sD27PNThjEgbPnFAA5fmiJL6oKH36WiebTo8P9xkiNA
	 2lSQRpvksvX7TNHtMsDvbrVxh4OyE4ZZmToW+UpQg3tToTHEwufngGNtiS42l9/gAP
	 8iudX7k+pCs7S49OUx52+MPxHXYq10MtmFTtKl6Ou9U5yIdKzJ5tDC9YzIrQFRCPNt
	 4xJN/RO4X0SOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FB4C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178778583368.23954.12845073747568703807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44c655265247984b9ecc95efd3f083059002c56840b803be532c58a1a5dfc036
Date: Wed, 26 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787785833
