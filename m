Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E12A45
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 09:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01418C433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 09:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681463526;
	bh=xsI9nVe5pv1hE7wzs23DXS+QlbnDLPSSUymZeZt0vpY=;
	h=To:Subject:From:Date:From;
	b=YBL42qawsW9hNUKSiNC66dZaaRkm9URaOxUWSouU8H1f9Ha5y7Td2pXnmOpssB0Hg
	 TDFC6MG8UaxavJYQnl9cyyzErCspjtsXUm8oXSOI+rq1qYW+ULWFFZUHVAKnVUVbSJ
	 tWdCZVW8iJPfgWApsY0/EF3YgqwpUh6OJ7sakOJtgWK08s4ytMxUJRksN4VJXHlx4e
	 vqdjEps2zwKh0klJy6QtUxKSD/MLXfhZknaMHyGqpmGPOA+YwiaAHnCR9Xq734cr++
	 YxzXYP6/Vv3UrtVUdGyz52Oc6321GO1eubqDV75D/T8vn4fnv/j6iuVXiDtrD2cXUQ
	 tbghFGy+LldCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCD1FC77B6F
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 09:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168146352582.32421.576921576726836278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c15e3479c0eb907ee3348439f6bdd7778d7a3aa7c4a1b32e54bb6ce6d948a0c6
Date: Fri, 14 Apr 2023 09:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681463525
