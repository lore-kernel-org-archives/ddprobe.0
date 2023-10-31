Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E23D535
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvJcpVE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CAC9C433CC
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698732496;
	bh=sQioosK0pNvVaJ0Ky+JSyvGfL1yBmAM6DR37xhUV7T8=;
	h=To:Subject:From:Date:From;
	b=cvJcpVE25Xx2UZU1OKOvaH//DPlXEf1eLkPtA5ptdlTlUwtYpfcJeigRxeMKtHqBh
	 wCDIxb66guxasK4Ev7Ycue/6sXHi5K1i+mEUIRJOfehwE2WuI2nL4IsR8L4DAMFbXg
	 66tmpO6WLmLxOfGRcziRMeX+sVm2K43At2o68FGZhUoyekA303Uo3Y98ZArHV53kCn
	 QTxg8iedN6PSA6+XOmbe+LMI148cmBIWwUkdpLs9kLWVJb7eGGipQB+fPC4Uwbsjqi
	 eXtsl5EF/jz2xaVjgp9ZmHthSFaNDMazLdaz+/phelaCMIjb6Cf70vx85g+eUGBmt6
	 j0I+131BVkLEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F185C4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169873249644.12388.17967645574556991069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23440ab89576dce4aa0f5e3939cfaf83c95963ce4378f5cc1ec40686f785da42
Date: Tue, 31 Oct 2023 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698732496
