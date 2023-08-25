Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6087E0
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 04:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D0AC433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 04:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692936248;
	bh=2vadyjiwme6HZvC8U7y+qropwYg5HU2XBCeH9Iah3KE=;
	h=To:Subject:From:Date:From;
	b=ZHWoy2VK0EeH5+6RDwXYX2Ld+Lv4tItXNZbkzoErHv3hGV7GSBZttufkuxj6XHZRd
	 53U2iaSKfm753BpHtMhtenevJkvOPgnOfBK+HWSI8ChpOmhf/4U20hT7qcEIwzDn1D
	 sKTmuct/Zygd9KdfF49/9SiEt9i/eqqHa/uyfFo7X/i+8AeCiEP8dnZBsRrVUMFZ4n
	 juLyiD60iW6aqL+yJmryNFxY1naL05MWp4HPwSdgUtpPslhqUpcgNdIvecSrRXjwf4
	 Ru1Kz0McJObgeV6Aa4yqmZC5nxdMzxaMmxWLj+3pHQKFp0eFuhxeVrg7+f0mRFt/If
	 dWqSdWwdxF6Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2AABC71133
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 04:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169293624865.14207.17672679678553894661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83fe18ad3910bad54a7eb670908a9678441a22c77d6f3386cf65d0e37138314d
Date: Fri, 25 Aug 2023 04:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692936248
