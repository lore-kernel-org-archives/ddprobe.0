Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A79917F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66E40C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662965453;
	bh=jjsZR+njdG6Gu1noSI9/mB0a9D14ZgiQH9N0MW9Yw5E=;
	h=To:Subject:From:Date:From;
	b=uo9dQgFPRUzyhogPyk6K3dldZtAId2IfhO1YZaELNKKOTKBjb5f6n+nmmF20FdvQq
	 mDCZdXWUOkrXI9G3ueCkJpU91uxszacKnBdFBESwMwGcgp3KRjvrLNN7omkJXMsnt5
	 YT5HX4sE2I3g4CKtD48OGbWtq4MhhAdlB0sgpdCoGi1JG3kw/SC5Y3hHa4gG7hNiCs
	 ZYtYCH9xleKNz2JcTMHgbbxQ1vPob8iyxdHn60xoMKJF/ieN4gyBWcFb/wd+TikQ/F
	 c5SxzdLOA4pBXXJluSGwTqtktn34l/WUB+1DCTzzSgaYfgJCPe94uHCxjPfQOBS740
	 Hsrbhq4Xs7XKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E8CBC6FA89
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166296545331.25836.17296650400314567114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00044f1ae5902d077edefea173b2c7bb45472ce748b8d6f8980b285e5cf8d98d
Date: Mon, 12 Sep 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662965453
