Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C934D468F
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71FBBC433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661881853;
	bh=nbcC9/oqkk0dKKMpQuDgBgMwN4FBMWeOWDTx/YRjY8U=;
	h=To:Subject:From:Date:From;
	b=OVzbJySmOJqCoWTmAT/jPGUG02ew6RV4Jzo7+TrShvWwo0224/+YMfX1/u284r20I
	 ZjdartOwXOLNi6KObZSBr7mGdpVXTsGmdc3mw/HfI/ohNYkp/wft1gsnalP16GoWw0
	 fSlTEQeCamBOIs1pW+5mkOtA81vBtmw02O0j9k3RBXXGWqthBARdgvj6jCZcm7mzy3
	 bpotHM9ZMPXp/Bc4E0LAeF5LqllFm1UBF3MueiQ9ic2KWnd87twSESzsPCoz/+x0cJ
	 TNJBn+ErrFel8NVZ9eTsBRozRIlkzxq2bXMpBvTER4u7Kv6owbPP6J9r8k2733wg2F
	 GubCUAcOGayrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57CCEECAAD1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166188185335.7408.15862754968019193840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d4efb05301c9d416510439c788b7c63161f0fa2b283d3e20ac9042b2d415103
Date: Tue, 30 Aug 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661881853
