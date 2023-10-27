Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F631257B
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdTpkby+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85FCBC433C8
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698439096;
	bh=VeeHXps5G4H07Ie9lhIHOF+87fiPKG4F1io098H0jlY=;
	h=To:Subject:From:Date:From;
	b=QdTpkby+flWoiCjQrOVKvxwYZ7VKdIvVBLW4s71To0qx5nAN54BRDANiZtaJF+QGu
	 Tm2udrfpKzdxoFto1v7k5jZoW4hAd1GrTHgfXTZdn9r9+JQCq0i0d19UestvGa6iwt
	 KLKO8yxAskoEA3husXlfQ95bAFM9EO1cY01tCQgAG54p5AIrdpzqU9ZUAGyqrnzS99
	 t+DbBsndhrNKM7I91NL47HqN2dMd5aqAf9esDj9kMxELYur+KOKeS60sttQJhEj6hV
	 Yr2VeCnEqlO231MYAPsLQbQJVpZ1SvpGnwTGTxKfT8JvQgbC5213INJOfLF3BCpG2l
	 ulieLPGSNwHbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65AEAC25B48
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169843909640.25342.3926917094300937036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b8fea01b3aef9146c7bbc6d7c5791b83c06c935986a597da3939713d245c3bb
Date: Fri, 27 Oct 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698439096
