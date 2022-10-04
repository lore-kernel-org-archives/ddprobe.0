Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD1133D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74408C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664902853;
	bh=SCr4cEcV5Wo2ekdoycgIrz9nS5x4QKueVgNGDtwQ0xg=;
	h=To:Subject:From:Date:From;
	b=bVCU+bnkgyJH6Gs5efe9Eeh0J8lRaM18cCdXnGNZdNhSATzSC9SgRnNIUMgSq23Sx
	 aLaQ7Oh3WqbPj2F7rNdeS2N9d93MFBrr2G0l6IZM9aZdkjSnQZcDCI10B+xTX0xXnR
	 DmRm2hwTFd3kILVM7VgtSEJdUqBsBb6T6nVSwQ20gh4xU1YV549bT6xsbYh8EyTeiV
	 Gxe7guqZk+7LEjfts5PqTIejzSwrI8mXUO25cR04MfhBL4Y7hYoWiVf/IlNIMSSTrk
	 oq4Zk/6IOYXpY9U8CDqB84u6o3b7aFfA4O0tYeQ0JtSZMxyGlbZ7QT9c750N8b+zjX
	 4tdGeAsAXItCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53222C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166490285333.1964.7411137631440416340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63814888d3e76f4fbc91908de48982dc76846bbf9209a3af243d60217676ca26
Date: Tue, 04 Oct 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664902853
