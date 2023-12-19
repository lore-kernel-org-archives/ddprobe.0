Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E85D06FAD
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXIx/WoX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D2D3C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702964296;
	bh=BfXtIOTnsyzSFScn9zBAhzsYG3YERpAwzRXB7x5U3e8=;
	h=To:Subject:From:Date:From;
	b=eXIx/WoX1mvAUwcACI+AEKlR0iNhBgrEQ9cfcXc+AD269b1wSwUT7MUVOccRXWBmL
	 /sgEIAtAYbLR+OCTxrxD9JBmlPGKHdnBWll4/M5JIpKgwqi7mEr4IdP5TU9JnLcaGH
	 4rmUbrh/ujR4w4hutZS4qwL9bIj+d6/Avvbe/XLrEtS/GvqzICv5XObGpEWJGYzWii
	 HVDtBHMQwaMyoSMVBCDyLIuFS9NhH3bvpHp6EYuupES3O7Ngrgl0QqP4cll36xYJPR
	 0ZNhEyIKCCm4kqaqpbnzBSVk0PC3X8/N2IWrGTJ+eanQusP4tvdpdvp/M9BCyD422z
	 +JhuBlm1Glatw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E46C41535
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170296429640.23482.16164685341712530462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beaf931a16b64e14edd6843e70008e17507d23b32fdd9ec8f493d5390e2521e5
Date: Tue, 19 Dec 2023 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702964296
