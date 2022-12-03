Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE8651FB2
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BF9AC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670048454;
	bh=zmcmsmqgNUmfp2khb357Ubp+KvTRQg05MFSE+TXE3mQ=;
	h=To:Subject:From:Date:From;
	b=hXVoyq0FrNdCYowcZ1Fzr1Rvl5xRiMg+WtdndUs/SQ9dFeTXFCFs+9wyoIlBKl3Ni
	 +LXUZ3UF3OK/+9in49WGQVhNHt/itlIhdkMDh1JAAuvrloYaCXpPO4sNHaODcZYHJA
	 1oE1ciNEwCfPAvmvgUIapF07XnutpIPxePLYQG0hYhtJlO/f9i1kxmwgRpOszSTmeT
	 4d83VVpwk86TuOs4+mY2prYeSao4jr4dC9xG4iw/xBsJ8AofdEJbDWyUoQb4YAGst7
	 DST1bCtpu+L8ltw57BaQFddwoTsthToxWrQzGkE5LAzKuIOxAkI2UKAJTXoN47N/Ju
	 abpHF0fFhM+NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50932C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167004845432.4305.4660398383416301509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36248722aaed46dbfa16874491c2d61d8cc5a9b48179f3385dd695a887bab90a
Date: Sat, 03 Dec 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670048454
