Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B21713D6D
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71892C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668709854;
	bh=r7/h8ofq0Xng2UkzZhunjVriHQOZl7XbrEODBXETtRk=;
	h=To:Subject:From:Date:From;
	b=AyKsq71j7+6uBwpOulPB0ZWgVVg/Amw1euedlIiG91556Rnwz5PXXf3yZVVN1Hh1L
	 F6xBXs9Ch9yjjQ8RXFW87n3MI8fXjnw3PG3retIDDrAWvDtpFFhSV8niqidRkn93cz
	 S3TD/GlrqbICp1RD2jBaiHXRB2CQsNKrZV2ctbWuKciJzrkOKmSVI6ko7JSRrCG79G
	 w72mapfmh6476CdwzmGcH97ZgdiLvZ4MC5MIRn1iHag+5gRWuxryfp9M+gnp++rCHO
	 aGUz7WDShLy3E5fRvZbgt10FAGa+/5S5rLpNgFjLGHw+cSmHUKN7C4fnujoNIEqMWG
	 5mONZeCEDBQgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A48C4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166870985435.13809.2556304000729376995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff3cd2aba0826f2e85f80bcb04e6b376503b5a19f60e4485f4723acdfe1df84
Date: Thu, 17 Nov 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668709854
