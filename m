Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349041FB0
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 13:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6982C4339B
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 13:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683380285;
	bh=hkjJi2GfnNhRjGdr+nqSUw6eBB5DUbxG2O/JSmtE3i4=;
	h=To:Subject:From:Date:From;
	b=EVUyo//0o1uIQb+KF4xrXsaYSvmiuKKRIK9qyNjBkZyoodKK6VPFbdAHtqgua+cdI
	 EnN3IEh6zU+u+h6FQ98KlGiHCa8tajHsKBICgGwwyOCScfTWsgC6if1Dfc8dw4Yvz/
	 Gw8zBWfsdVfx1GAM+GvxhSdokhfSzSbhsD7Lo4N6BOCz/Zbna4Nu1uHdLiNABsVUHa
	 K0DaF6v7Vuqa/8t8qTxh8MPmRE9NDEd9D4qSynBNBSA1fS1kaqsB/IITSMKzoKr2Xq
	 7FhefT6yLZiIo2aoWC2VzBuBgYVEpvSAdBE+JPRR5ziqqVGRkLvXpn+Z1tHuD1efj4
	 CZcqm7A1Dtepg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD2DEC77B73
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 13:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168338028576.21155.8150275334993954468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e92da5db6fcc86ab2cdb8447dca397be8bf2e727923cf83f13951c2a819bcf
Date: Sat, 06 May 2023 13:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683380285
