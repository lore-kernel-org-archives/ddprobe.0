Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BE1347FE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772165694; cv=none; b=l2x84wsS6WVkHiEZJG7u60QHeD/w0zKHvdHEYBe+bZGKRmg9Gft/EdoetozmQPnNoJpy+pMkCZ9X7Ha4n4qe/Y3PsQfnfXajQtTmDrUImPzg9OnGe41AxfHSdU49Vtf4x3h0WmxIgZ8lL7SzSdvzP0oxRrKBw3KGXi1j9mH5f7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772165694; c=relaxed/simple;
	bh=gNDJZfGAOR+v03cSsbNc3IIXJbxOK0QLYl541zeIxFU=;
	h=To:Subject:From:Message-Id:Date; b=kZTpPSrb9NLHm8sOnoqbr6TgqhaLbGqf9g4kiQ5tPszfG7F224zSdB43NQ8bVgJDy/T4aDILSASkcKVyRUB3Hvb5LvyDlwXk+djuC8WvrasxcKcrDwpUZ4Mro3z06TOlIBW/6qkxBm0nj69NF2cpiCuuHh7YzGP3bzywUdTkguQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWUTHkH1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWUTHkH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE9EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772165693;
	bh=gNDJZfGAOR+v03cSsbNc3IIXJbxOK0QLYl541zeIxFU=;
	h=To:Subject:From:Date:From;
	b=VWUTHkH1TIFo/l0NBj39wqxGI+Z5nlCDLZBo06h0CDq4Ae4sLFJVW6KDVMp7n0/RH
	 iuiufYIrEFNlP4+7u47HgDq2j8iuRJyuoPKW4wakqVTgNXLkKU0s7mLQicghFbzAp5
	 TBhY38xygbXhid1Uu7fLZwxW8JzxfrvgzdnHPX2o4YbpMJSrzU2+VXymG4bHemeOLW
	 wb8iFMARJVTTolFZSkiG06UZKLM5eDSGPqXJT9QjqgCxpdtORJG76q1sKAmJeB5Qo0
	 QwrdcMIFFYicbLHMOBbjS1klgo3LKWvXw0ZHxTpufM2tldtMskS96EI0ZSDU+wi4Kr
	 Y2XhdM4uCme3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99719FD9E37
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177216569358.23101.8294644054359101695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e67b7e27cc080ec48302828165f4cf01444127030a67533857ec344282bc8f5d
Date: Fri, 27 Feb 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772165693
