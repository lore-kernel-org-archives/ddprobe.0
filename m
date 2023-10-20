Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1ED12E65
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqGishOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 822CBC433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697810296;
	bh=mvB1MCo0pvZZ7Q4tLnCC3ODICk6icKtUAb1qae8El7k=;
	h=To:Subject:From:Date:From;
	b=CqGishOmEZADH2sQ9Wg8q2wG5uQx1fHO1AUAyDAgxiC+g7gkxkdVo60LicUcRatGP
	 XASc4hk6REXsWtIFMXCb+9VOeqWfxuCaGYJcNZekEkwYUflqsw95ABuF6LVrbM3PEu
	 NBIyO3QkdhIXPH/takbpXDzgY8cMS7Fvmq+PHBYlODnVI2+8NOOw1fjKIXfGgM2CqP
	 kUtF8IvMqGQEnP0xpWy9+5aWKH9Zwen7LNDT9bw7LC0PU+BiVSF86YI0ncYXIGpHxf
	 GwLdSrF2koT5L1Imf1++mcyHvnFE47mES33VLOae6bn4/ievkBawmpXJUuP/qPHHNS
	 PQzx0LoBV5KtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6607FC001DF
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169781029640.8824.794278761538071593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672e30a912036cdf32c1669ca59a2bc8415c7f07b4d7abfee0b588d2ee56bc5d
Date: Fri, 20 Oct 2023 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697810296
