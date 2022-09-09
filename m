Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E156AA5
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72FEFC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662765053;
	bh=Fp4bCw0Jakp5lwek3DD6VlvANPYWMg7uBuzRbeN2sec=;
	h=To:Subject:From:Date:From;
	b=OeoJWduxM95vNIUMRRYSLjeCKT4+/RgBZahlRrJ1v5GMV32wtZh1Tb8T0mLTja/H8
	 t6UnCvWheFyI4nT4XWUGeSLRpxQKtrMvfuqQbkHWtfcln9FlA9zVkwpG/TyE7yeKHs
	 xArDCuWDiv4RilzsL71ng4J3bh4bOuDrN8UzOX3GbyRN7TjMhQmnlL1ah54pK3WsbO
	 9kKgUPg0Fp2Sec6kqY4frg0T7GjQ7ZG+lDYranjF3YqhfBvkOSnpEyVcdLYECjVfbf
	 cz7FTGo2dr/HU9l7aBQHdlIwLp8EQFyqFpzpKBOsFS4Nv0BBOd2mbKJDV2bgZq5neR
	 Uj8T2Z0stPtQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54774ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166276505332.4202.7957597594162153020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc8e2ec9684222e6a26c146f3dc84c0728c4dfd1c0b8ee9bee05225a63817190
Date: Fri, 09 Sep 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662765053
