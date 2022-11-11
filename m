Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3591372
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C7E2C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668129054;
	bh=EGuJtFOaIpVijvrJtLcgrmWsagsJ5m7V4JQ2kRb75ds=;
	h=To:Subject:From:Date:From;
	b=JuIHpW7HjtylS9952qsBlEkCPxb5JNg7jQMkaFoZwgHhBbQ/7ufqBYYGq5skxd01j
	 EbDqZ9dznf8SoiAZk//H9qSIkgqKDwRj6hSAB14pRrNFTqDSVF76fs+HRuRi7pxh7t
	 4/5vTwfrMxPoAj0R2h6WMeM69WTRzRyQupNGQw1X+lMbKAn5aWpU0WkCeaBrrD2+wO
	 giDfYT5f7DAYkcn0c4A4Ya81N3HtC/GZIlqeQqDFmdECKRP2Kq1+jrblyGsBtZ3Y/7
	 KAlsYY6GX54y8Li9t/JL534S0FjhflVpoBzsGbrAd70Z+PCIYvDMpILRN/J2E5ueWx
	 xAmN+V+H6K0FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD4DC4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166812905437.4058.15883194028354655100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966c29bf7f3c7331a78ab7346331d7ea17d46f41cefa6dd6342336b477bc50ef
Date: Fri, 11 Nov 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668129054
