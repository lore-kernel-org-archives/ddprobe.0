Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B65D810E2
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 11:05:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5D4E3C4339B
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 11:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676718307;
	bh=O/m/p/a18hwcGDbdF4BmRaFlJkexUbXS+lywDN/rwzo=;
	h=To:Subject:From:Date:From;
	b=hRMaPSUBIGQUfZkZ6yEhZNZkT96lpqmia26NWGu0wUOfig/NVuaqrkN3fT96XCNg3
	 7Lo8f+4Sf0FLM9+/jUtNp0EnEGkqHKcdfPLDgB52fRm8nd2Lj1NUmf+GZTlH9UvpgK
	 Fpm6X6mDgbyYVD5PafJiCq2PK+dcOHwNR0CeUn+bT+FUp5wxiv+PnHMjOHhhH621Gk
	 hT74aImMyenJHIVT5i1Vz52Yua2T2HKSaWOPPNj5Me1/ap0I90lrI8aVttOi1y8IDX
	 HjuNnmoRgJDsGbj6Lu1D8606lxk+T+/t9dRJSewBMnuOGPdJNlCurAqZp7HWq4zp8R
	 UpRf9/3T86Pgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18568C636CC
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 11:05:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167671830608.22314.7359758225646711237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea28d18f263107928d8d3485876417be24e39e0b47582aa8616ed62420e4efaa
Date: Sat, 18 Feb 2023 11:05:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676718306
