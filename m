Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE304806
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82730C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671342087;
	bh=/ZPbFV68KdMoKLtUIdxnxSsiPSUf7KReKUUVbPykAHM=;
	h=To:Subject:From:Date:From;
	b=k6MRxQUAdTqJDc9OyHFVcY38nKYj9aYsOCEtLJMUj130PcZk2NnxRRnzx3Ech2chW
	 3Fvv03moCs5psPIRRQO/uGf6ksbYr3obgRQTdHTU+YqBYhtfK2GUU922XH11O2sWaJ
	 ix6KTNYeFiOotLanRAbKmzajDtueGg0Say6m2t1VWd9Qa//RATAGC4S7ci7R+yjjGP
	 xzSC/SGsiRiMbB5s8EV+Nc0KaF8zTDkgxEBgWz6zP5XiCYfwtkbxVWwJUlMGFzpXEf
	 8M5TITkySzf/hmbX62FmxTxBlr052Rm3mBq99pk6NKYnzGFEx+5bsQGYRyq7d16JlB
	 YTKi7J1VMNxxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66038C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167134208740.25270.3565315872941215825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f593871343e86beb13744035b7805ab416977f29c8859271613e312100bcd7d
Date: Sun, 18 Dec 2022 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671342087
