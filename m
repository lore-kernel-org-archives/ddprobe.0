Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2476D1FA6
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwRhoyha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8508FC433C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699357696;
	bh=62lIdNL1HtIso3TTlDqgypeivEJPOPSaR6FZWBepGM8=;
	h=To:Subject:From:Date:From;
	b=UwRhoyha88udREH6IHnBabRYzTRA51qtpX3Y37rTDUPcALnFm2hsEjvG8zDliLcCj
	 TpI4b7i7GIyAO5IBikMwWBY6rQxMALTHFvC5fkIxjpZzOkZgm23wst5YVIlOIHV8T6
	 29Xf60N7XWwpEQl4gnPzcCNIHTQAZWM1PQbDBZcVEcVngUufm7U+hdov8y1FQ089do
	 an3hT3nyltk/T6I1i8iOYfup+BnWuEOu/gUk3DarCFztkwumY4a1S7A+uzGM/kJm0o
	 Hqu7R/AD9B5OCpaYdnbeRse9O7DiG06rLCilgVXHEMh2Wp3I1u8T22KQMd7mNcsMD9
	 YPbKEsB+1yGSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A2B1C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169935769642.25263.5088857523659999509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db4cc921b08c4c3ddb4d2ba9bd548f272fbf4c462bfa7b1c19edae45a4ac73b5
Date: Tue, 07 Nov 2023 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699357696
