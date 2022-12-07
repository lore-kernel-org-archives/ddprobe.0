Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F98366
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D258C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670416854;
	bh=Hs/67Pb7eu7J010j6EDYddc0s5cg++IjQPmTVurZ2PI=;
	h=To:Subject:From:Date:From;
	b=BESRWEM9fCJtcerFCBp1Fw85pnDK23kFPQrvir9Ni/XbsN852rda9LA+XQBOVzddw
	 vtqQvrN8AXTwGjggVxS8dyWQTG9bwdYKz6L5U/V96m/jTfxSCqobH7SpEQbte0INUp
	 qP4e+PFDB0a7cDC/fBBD3yP7twmUtPzJ5T1usa0AvI6jB59TJIH+6OdRba041rMwAY
	 QWNLQDgbW4iRL9lg3mfeluonb2CdAyUKUrQbCG3FRkrPD5xdPweqDAkvkug7ONsn2u
	 TlW6VnWS2gngiLm14kkqR7TS3Qpbr4wESvxd3b+XpggUb2U4WUkf5BYdoShwEhd9/c
	 cmGBzHftKziew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A8CC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167041685431.9198.7130738133667291710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c8bafb2a983a391a2e69d22644483fda4aaf607667aa4dc43884888ce8f538c
Date: Wed, 07 Dec 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670416854
