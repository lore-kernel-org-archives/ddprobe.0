Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D0C360
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 14:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NklZ0Ial"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93FE9C433C7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705157297;
	bh=haCd7yhhc23+u7M25XzS5D9ByLAqEGcTI1S1vrM9XkU=;
	h=To:Subject:From:Date:From;
	b=NklZ0Ial6mJhZsAYb74XaFlViYJQZKcn9WMFGCoWK10QGn3Ml+Bq8emAFyjeDd1wg
	 +/oB2naok7q6Dw5Yp5ocilcJpXmUSw9aB+asArpXkYp5R+kLasvEPbQpSMfnEpgoEW
	 3ngU+VeMEEC5gUf6gSmRXszpJ7cCHCOmQwcHuSdN/7dYlzaKZbEc0Ix/OTjmHac6OH
	 ZINMgIz6r3c0v+wkDpEWHSkLouh1BTb55xORR4Ji1SDQktSlbhx9a8lZwRVndD/SwH
	 OByyxrfaYHf05lYn9Imh1zUk0y/IRq8c67fYfoVEdp6OwRIksIET4+we3+/2/Bxgjd
	 LoXNIr21zDmiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F26CC4707B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170515729642.2039.4302288056304119539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82cfa64abf9a9e33c501bc0429354a2663c04e5097bd8f536fb157be5a3ddafe
Date: Sat, 13 Jan 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705157296
