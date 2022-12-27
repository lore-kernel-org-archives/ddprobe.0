Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0083EC0
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80826C433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672139487;
	bh=79N/6oCfhnQiaJZoRBMI1F6sUnwxVjOZjL0IWGwo3Wk=;
	h=To:Subject:From:Date:From;
	b=uAFy35nLXF5fXB4fPx+5UUO8xcWMp0N9n07sLD9fYaJDti8fH6JEbDP7Nd78z1VKW
	 zWMM01h6a7Ve1DwtsNMcajpx1KlmHd28h1SXbkKAPjN2wI2vGXXTIlpKXh2NV/DWEZ
	 uuBvejryN9W6o+pNmsvFKbBgeXRRVvm8ZNCzeZpvB/mZQk2kTzxH/XhEuuQTgivf0y
	 tSmGWuFTr3K04BPYJecVFdyb4fuMpKVzVo7drx1ltEfjh56DrDk+C7/k4rhqqRYGpn
	 4l5WbIiEVvxjh2GZnNgsw2IDQRb/NR9wvpgz9k1w0YutsWrWqdRKFuemepYVZ3g5eU
	 F5Kz+1p78w5wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A84C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167213948738.8595.11199286861749149023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c6f104a8f1e19a097266cac37b65e634ee8dbc8b2573b4cdf5797ac7065334
Date: Tue, 27 Dec 2022 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672139487
