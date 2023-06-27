Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ECE3171CF
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 10:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C134CC433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 10:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687860188;
	bh=6KAiwL1ktrqqnyMaUggWohup9Y5UT/MvTJGcKjpFhnE=;
	h=To:Subject:From:Date:From;
	b=jcMFDl/WTxZ6aqPL77VcoY31MdMXhQ0KfMmRAnHBKMa19LZVXVtDFC9yGhrULIMz5
	 y1kVr2w03VCtqSwCDghWAuTgmN288caakf6Z3oZ6+/tHsXromfVGBHUfx7cbN/gozH
	 xxpagsD0U5VTI96tJMk561VxJAshH0pZaLCwzBPQidOs5zPRWmTiI9QJ4Pu+EPDQxP
	 jXNcn8zqeUi1fUE07fLd0Z5ikTpv5I81Kk1r01wMK82OGPbE+jiKo5453zeJNaLIDI
	 hqvePcG8qwVR18EHBsq/Nbcol4P7wBasvKJ/uiKty+odTf8st8T2l7neEWD7wgofHc
	 2a+0vGIGmkRSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3783EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 10:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168786018866.10218.13969890570112757752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534c690919db980cb217b96bd67cb6ec80ecc84390063044071195d72a375ce9
Date: Tue, 27 Jun 2023 10:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687860188
