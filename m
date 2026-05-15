Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5043A9001
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 04:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778818234; cv=none; b=ZMO3b8+PFiqt5Qv0kR/grXXRQiET9IY1Fgrdrv5NUQ4cNvWE9FQuQmR/4Fz1GJ5mOTWQQh7Al2m/mCKH7kg3Ehgf2gY2c1FJGBQ+pFXlH4yKqvk7kqqrO/0rBeETWZoYh+IfF3ZEbGX5GA+qbnj6djUSeoRjg+72l0y3STLpPNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778818234; c=relaxed/simple;
	bh=+xls5Umzg7bYnC2D7qU5InFPVduqgpCYu58pRhgLgk0=;
	h=To:Subject:From:Message-Id:Date; b=epT8cD3eJeLoOiQ7/FV6/ZMQm7xlY1rky/GH010Ab94xrMCKMAEtbmRJcddYU0xJI0H7jdiGo5eI3KY/CsxvQVimUSiMvz7XdKHXX2RSJQgJekc/T37sr7EdoBQZFg68LRhCcdMlYyzuikMUDXY9BOmCA7HsMzruor27ZWU1Ueg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzS74SRH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzS74SRH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85D8C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778818233;
	bh=+xls5Umzg7bYnC2D7qU5InFPVduqgpCYu58pRhgLgk0=;
	h=To:Subject:From:Date:From;
	b=tzS74SRHPi21T+Rgjc0f9zYLWcCrA4yltdPufNZHIaqXk+1MFCCex9N8eF2gRiFD7
	 HIB1EiVzFiNsjbhyPYlyJm4oI24CgGs0NwYbIX2RJl9beMr37zxsjzVEA4WSVZ9aK8
	 r1l4hc4qaGnVzSKgfdn58PhuEdWi60pp98xwxMj7FfWzQ2CX8QrRjgluY3vqHCOI6r
	 FEsfW8GIkVrSqXzqC0cnSG415dCT9QkiT9/LUruqnMD7v6C3spR7S4kWkAZvk+T9pP
	 uWE79nuZpqeDvM54BTdQdMdQq1k9T9QAt8YEghsZ5CxjrDFXHFgLoB9ptaa0nVGcsv
	 zRzg0jJpUh4kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D2CCD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177881823368.19815.1488614300517692760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc35dc5a2576fbf4ee9fbeb557173e60bc2cd7dd817c00126dafd4537055536
Date: Fri, 15 May 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778818233
