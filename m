Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAAED10E6
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 02:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbvYxDIv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2997C433C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 02:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696730828;
	bh=2XwLVepdyXO5nxNB/0ywptVTX+M0LroeQLmi29hn7sg=;
	h=To:Subject:From:Date:From;
	b=nbvYxDIvtBKbNnqGLAUgOyg2hSH4L6fhyrYFPH9XGg/x15CCw9wK9JY850Zj3R8dL
	 1AIhQ6mvn4niE+O9xQybuMpmoHgz8apGVB6AVcDqLXwlsVkB2R6ld5QOofh2HYr2PT
	 HdFSqDrDhm9BqhPcqK4Z6eb++f1lAZTtKaDCAJOmZKoy4dTvI3krb78IxuRzR5NoBw
	 CtOKdr90OErHx7B63qPvrFSO8IOe2iav5HOP86M7f086r8PVvkIImwLVz4yiXOPHD4
	 O4b353RWNf3TgPGVrbu5UMSdZW7cpiUVR0LaExyPQzZrgk4K7HmvpA37VDqCw1Y8bv
	 jsUcQEfse+4Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81FFE95A86
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 02:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169673082867.28202.5164967534681866358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8ca9b42bc461813ca1d55f65eec6568fecca901c6937c0259887001f0516fe
Date: Sun, 08 Oct 2023 02:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696730828
