Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB2461C05
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E036C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670809887;
	bh=7WcEyWskTy4MrWIko92Hfz24e8BcL2HpHb1P19kDpnw=;
	h=To:Subject:From:Date:From;
	b=Nz+/bZecTSSgji7Yo79xKrsnKx3195oLl2EbdU+kM1HZkmYvodnrmc8iu3DYisYAk
	 /UonxJR88vnmEoCVsZIVrCe2AjIHX2hjj56DNAXr/C63hlHDQ6tVAE3xtCetD9BOjo
	 DHU1Z2BfQLZYAPAWrV8Us2iy5sNQYFgN9wX9PsuRSKmlz2SHiCw4brNzSaMNMeoxHp
	 VXSDK74ReefeFmA08/CBf49LE556aOJVXpOjpqEU30IY5Nr38tjVfZuq30P62RIDtO
	 C1nZWUfCTkbkJjic6etZfrVDgxw6m2LHej0ZYq/gJRxw5Cu5Dr6a2OB+Mf8zan2c/z
	 ZMUuF31nWz+lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62110C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167080988739.4424.684176203927478769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 061227f26afb980089eeb8595cfcfd5b89ce5b768e08f4867abe990e32867eff
Date: Mon, 12 Dec 2022 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670809887
