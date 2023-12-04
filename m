Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D67E2E83D
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dw50Dyt0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D22C433AD
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701715096;
	bh=8y42ebQN3HHnaip+5PWyEg6MECHUw/tova1SiJSo6Pw=;
	h=To:Subject:From:Date:From;
	b=dw50Dyt00z1A9w2VIQxtTwn3eAdQz2uy8jz4mDLVHHZNPMwgymdl92xtwx1UrrtvR
	 PoNhdfaqDQV9Vi1xmkyXoZoq/anrcHj2rO4lbSeOrE2kXr27/VS6h9SnOxHRXce+v1
	 r4xOG7b4PYXtax3oNjqXftz5cnvFz32VtWkbRepnKd4a5aKMT3u9F4N0Qg1LZWDnFz
	 EpD1QB5ACn5nwtWI1VX12pTSAViTAHQChuEXY0pF/cVy0O7SKNRbGwZ5fKYz9tS+jJ
	 6eo20fmpB+Ol9kEtOkJUjqhJVL4DyE/5N5VfndmD2zDR/uQF7KLsi3VYvy/EtP+Fp9
	 TXDsoGaIad3jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC5FC10DC3
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170171509637.30210.281429850266235567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f37cb5e9a3cdfc6008abab2f111c9c57eac0d002bebe1688fb4ddf2266e6b3fe
Date: Mon, 04 Dec 2023 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701715096
