Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20B8A461
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7288DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669664454;
	bh=/3YRnMaaPZzWEgTLNa8W/DIZKFUQBSWUr1CnwVydo3U=;
	h=To:Subject:From:Date:From;
	b=M5TYHWH1l0VFo6DQU8FaJR5xFK9PgnGDTumh8FfeOjruy3lwX+Kf9cId/mVwVLoXU
	 e7FJJh8T4pIJPl/cvTaxHl1TpPsYYHSA0d0zjnj076zHmekuJJAiaxa2mUzmkjK59F
	 vXrcmUBxAK9GzMMWTaIcR8R0mawJ65gs+vHhClOgkcVkc9EH3t5krWeAFoLuh3Nyb7
	 vtJG5EoNdRiN7wFfcVUrR3cLHAtGyDtD1Xu9YP7VjJEsl5B/7o6y9dn7dWbuKtOGK2
	 zW2NLs5uYJynSsTlSHNnL/a/6mrEoE5KlOtpmKAXrRYZy0sZjy47almsdoAZLo1s7q
	 iJjBDsU2jl8zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5594EC4332F
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166966445434.12129.10934297163593921842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aebc2dc56c18cdc45033cd480411ecd2d92edc6c2bd558e339d1062bb3beb69
Date: Mon, 28 Nov 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669664454
