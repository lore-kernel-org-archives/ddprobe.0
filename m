Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78E5C625
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 03:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB17FC433CA
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 03:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686800228;
	bh=1DWnznwdSEcQ3zjdgnoVtJgltS2fzcvPMcTaay/L/u8=;
	h=To:Subject:From:Date:From;
	b=qe6TWOS3bH9GgnraE8yYJVWTD3aebjIdBuItN7VVXdRYMKtWmLKC1asQVrBRtDf/5
	 CIQ5MVWq7l6NYoTilWd3xu6bxvJ0qxKW0PSsjXkl2uHnjS/X1KP8Q77UIrWT4eiIjq
	 y/eTb2Nk4/n4q+neym6BCAiDIDVXIwbHia7CZE17Tw2LZF5qxVWb6N0ZTT1L+eMt01
	 hKGgRF7sme1MMnFWnavV5djziDGGkszBcEFYSYAVNtzVbfpovF2ww2ADufgS/XCAu5
	 ZUdiVHCT1Pn6C7414nNHhUCbxdufH8G+x1EUhEQy10uebTPSacdHlZoWyDjf/Ys3w+
	 I514w80WPne1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83A2EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 03:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168680022868.9167.8117354749075593802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41885ed8f0e9d355fda91481045eca5e433887a6e522f05b4233fd8a7182d804
Date: Thu, 15 Jun 2023 03:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686800228
