Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F355A1D88B4
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772623494; cv=none; b=AgDKT7vGSM5Jd23GIS6ZQ4LE8GEnv7VbaSMq1Sn1inA+RQIwpW/VHseYPbpv3GYGbJslP5PDdmuOvm1aFTl7ZM2w18JaEisX6q9ANqklHG9K1+WZv64jcROLP8jieut5HF93HGophwR6jTbNk4DnByaKHdzxAztpiNIcCnZNZOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772623494; c=relaxed/simple;
	bh=BRuD0ocHNiO/v1+NP2A16Nm+y4gH3WGVy2S5iNaE+Nw=;
	h=To:Subject:From:Message-Id:Date; b=NYvo/rOKXHbWRo3CVodMFLLrP5U/1Ns3LVO32wUmPUsb/H5zTrm0Io7yAueHTR2LZlouA+K4PSbkircjdFXuwih4SvgA8FphUwMbfD8lLjL56y2Mvs62teN4c3wZ3CNAuLb3XfX6tHaSPmaCnNYrPZigdircP4UwSxzxgIh0q9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yhql7F6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yhql7F6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE75C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772623493;
	bh=BRuD0ocHNiO/v1+NP2A16Nm+y4gH3WGVy2S5iNaE+Nw=;
	h=To:Subject:From:Date:From;
	b=Yhql7F6zlwVCvSuIFo1uTh5/heNNF+PjFR1t8Zehg42gFPeseHZQSkgfD5ulfxzwi
	 L3WDJH7BkfQsQUTtIgmiKhb3V12pcIyNczQTGi65TWDFszTxR7iUebERw6BoKihvZH
	 zRPTbkVBN7kjzzQbmiUnKu+ydh1X9MQNRrlgGd+Ys7Pqk6no6LeyIHjTiB4baEMuij
	 4HACfTyjdlMZwRkwvFCKa/D9D/a8ysi12Nf3txwEBXC1sW1r1UJd4wdKwwXEyc9GSC
	 x8RvI6L5F9fk9dpoGfPeZCgXYPhC90UrnSyfnyBMEV9bUypLNQJUzEw1huKT1geYdf
	 WQvzaAu7OPNzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A81FEB7ECD
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177262349362.31047.9519975372264181505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a068dcf7298ad2753236cb8dcf2dca7168464a9e51c9bd266a3358945ebea6f0
Date: Wed, 04 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772623493
