Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6D1174F2
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 22:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D6CC433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 22:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687300928;
	bh=dTvkCCvRv/3DImimJnJ/AIWq1XlwyQwyJ5eAv1Jv5LE=;
	h=To:Subject:From:Date:From;
	b=VVg+NBBGWH1SBGFW8wg75aP6urPl+Esmi7fnTMD9Ho+r/bmR7xsHZ8e5Vy4MdrCRt
	 agEvjpAvBXNnLSaafkvfBaz5rNdS8O73JdvTaLfm7Kjrm5jF9avDXIC4nx4v3OzOBh
	 Eyh6oLq/klrdn8nsqCpxdFkzIeBz74Q+zzoLsw+jPQXEQjG6IC6FNamtCV2qkLJZzC
	 e38KVhxaYCxDiSaAXpmap3Ytq0a3RzIbIPFlaVoKcFVHTgRGxB0B9ga7SJJFLy2LFE
	 JmftB7CMOIqqD1QWayGF18y6/QGYQzoL4K5Ue8dL0HjCx4hTc43w9iyCM4w8HdeTzL
	 fvmk9FZ4v+MYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D07EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 22:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168730092874.23168.16671246912301357340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ceaac37eb18279efb47137d586a0ce3bf176a0bc884af69c93f064a330f03d
Date: Tue, 20 Jun 2023 22:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687300928
