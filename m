Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8A657E
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 708DCC433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669262454;
	bh=8saGClspTd6NgyU9NLgX7vY0rZU7eRSxWXN302NXGeI=;
	h=To:Subject:From:Date:From;
	b=PJkjgr2FoPGFhFzsfvPilDh0x92hNsVDDyzG3DZaFaFBUT6VXLRMC/sDqEHoc8QMU
	 XZYtU3U3P1wWyMiPEwFdaMaTqvQcDIF+jugkZBoEWhGE4vrbVhmewp7NRfI1z0db/v
	 V7I2zRht7uXu1mVPQ4UYQ4cytQEEXew4BsKVlz2JeUg73iZJvFjgarIt8NOQVQablq
	 Ia/pRsmbBsqaja+2HKShFySgcX9wDrKCvDuUQtJ3ghQIGT3iFMzPRRBfApLxBwjkkc
	 8bEULKlokic6fVAjaffuyHqVTpOBOMU+HGYI5fSKu4ONON3JU743MoDsKQXtRmxkhC
	 YA/w25sQ+OmQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5553AC4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166926245433.26223.690828676359026067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222448a6543b65df74a1d13c80b5f518e9bc2f849b7ce7003f8e3c225ce6d4d9
Date: Thu, 24 Nov 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669262454
