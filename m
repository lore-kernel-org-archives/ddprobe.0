Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC99C1FA8
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E235C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672384287;
	bh=B4w7KZV7cLejHC/YMaUhqSDdS3uHIIrAZ13wqtbMaX4=;
	h=To:Subject:From:Date:From;
	b=HKNIYNSD7Y0OC99D++BNrIM2FDV44CfdwFQ2pIxPDXnhDixzzvap+T5LKLkrOlkAE
	 YqelDi4BULx4MpJ+gNfXanGJ0ToCbuTU7UHjl2H3Qr278tvEYBpNXETrOdIxM6M/P+
	 HHjosejulAVCUXJBp0O0NHC9AC7z+TeDMxCdmyEAhMNfxRYaqx5Vv/WixKBKoAlXlp
	 0bV57dTmsn/abcMHL+Z0gjV4iVzAZw5v4tkKcB+Dx/y2t0YQhxrco7qugrj9eww7tt
	 T4gpMQBvWEPskAV9yzsIK2c/eifkFYEPOIJ7WUUstnCWSShmq3y82MIZZY8pyXbTdt
	 K2I8FuO7tPPpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D543C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167238428742.15052.372178807200254251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002cb9a70d1ad324e2945d698a1f5297f2e7ce7f7aa19e853debdc3c5353d395
Date: Fri, 30 Dec 2022 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672384287
