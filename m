Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DBA4396
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 03:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsKjJVew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7837C433C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 03:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697686692;
	bh=WJpporBhlFTsbAFNlWN7BAIjRY0Li8P74fflnLBmpBk=;
	h=To:Subject:From:Date:From;
	b=rsKjJVew5fzCwYAjIdOOhOrCI2e9iwlJuAwEfkTWtD8A5nTm8G+wBLSj8qrsXF126
	 aIVOqp98WZ5rP+kbIsrD5VvvySJBGDwskBSB9p9HasX3b8/g7rMxbFmCKoJ9mtwaGR
	 XHNYMRpv/dWJo2sbx2nErXx4XwglCyTIoeeZtUlIZDuJQKeFOkf3oFtZDD7hjya9AW
	 cYNpgBEPCOwfQMFfcOEefMRItdmcjUajszFsFyf3nSSRpYedXCL2OVdbRFww7qZItX
	 Esp0HIZHvdd00uPjuiUtXhR3c5b3cq/OcjNGiSo0UazVOL+UwTbSSdvrESdMKRCgp/
	 MFMePRdapV3Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB414CDB47E
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 03:38:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169768669282.7812.17430372627575786846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7951987d83baa531308e0da2ab6f6b6c851f918648f9780dfa2a1fb71c35437
Date: Thu, 19 Oct 2023 03:38:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697686692
