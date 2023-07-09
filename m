Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F741FCE
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 08:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C0BC433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 08:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688892428;
	bh=h4d2JbcxkAMtoiNYQP16LhsgcxLKkALdTig1VuC50mg=;
	h=To:Subject:From:Date:From;
	b=FjGhsaGR8b6a7sX7vDFTuIzoTBFqHCLgkIS8Oykq9wskXLxoTcv+XNiRuQGOgjPSN
	 4Ccd055BVV1THqaWCPs9qN5d52ZqZrS8JMoG7GdQL67CKd/4hdFI7PxlCtIFaP43bo
	 4ES5nUs2XwvZxamGF26q/ijF4ZxuHgzBlsXdp5oIP+YISTE/BM0Iyq/r7oJdA8IDvx
	 1/I3o1WSxWU3bOufK5io3/omudd9psA6SxCawGl7gxE7o8AFYCNRKGiRpZSvzZ8+cp
	 C4rgWKSvfvyUbd4lGsNgWU0xqPxpFXGibALRbO9IPqRKIAOqO52RIALicA27+gCFDY
	 INeFQ2DtmLiYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA826EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 08:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168889242866.30257.16193999739914342594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b5121ee472d59c34cf31b41143e5317ae0d3af5ef68b461ecfdf24442d489b
Date: Sun, 09 Jul 2023 08:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688892428
