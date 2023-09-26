Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 880BE2908
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 08:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6E5C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 08:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695717908;
	bh=yqrcYM+fLUUacQvMHpiYcIS8nDDD8gIXIQpLKEQ9peI=;
	h=To:Subject:From:Date:From;
	b=UBsG1cCeghVvA8SfF2wMMHx3+xp7N9+soo2crmAmeUrou6raymcTg6zjvIhNTy0X4
	 1U1fu9SX+97wRwCVF0u360toC7x/7UxJBec6yRUCYGovVqwWAPezc9PuaB+Myi3wGt
	 LX3ug/+9FR7CBxluY32WMtWCwYOxhT6Gyo4YvPDn2+Q4JVQG9hU6pOQnOdBPOliJI/
	 xdWbneS2R1zIjMKnTH6O2BXnh6m8xkxQA3nW83Dkj9rsn4TCUR+QBPGlkqBvi7pFAl
	 o/cvQ1KYQmX1QqiFJNmmYPOdpS/C5tbBikdnsaahGEIt2lWzp2RxF9nwlYgY8AFO+E
	 jgJVuXja64Xww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA91AE7D266
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 08:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169571790875.2562.3069823613999126867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22998a85743a7d2a535bdefab4a139d244da9b82a8680ba30b48265df95d4920
Date: Tue, 26 Sep 2023 08:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695717908
