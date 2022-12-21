Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB7D2573
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C8EC433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671639087;
	bh=jvnsglbcKX0Ndnb2JfzrKPruGwxdoiybcr6JW84Hf6s=;
	h=To:Subject:From:Date:From;
	b=Gu7H8wnHUrVPfQ6u3I5ckMRL55amhpYxBS2VnRPjketoCTstl5SzupPEhUpsszANF
	 qZmZMTjw6832WlyWTho4ASxKhlMp9UdHmY2zt6DNX9by5XKxQsbKH6rTrKJ+r6+VRz
	 Vgk9s+yFGqFmlmkV/5ZKQqX0LFnZ9ebojOiw+7UFwjyirLUPbuZ7CmZE+7f16/8jZC
	 +0xABaZJyPCO2FNv9wrp6FjTxKiikjrZ5wKKLDSriR3hnlXMhusMn8Xgdwe+zxXCrK
	 n+sr/awkhfJGyPW1zzcXI6rlNvaBNesdJkcNkIfCHLMcy7yRAzEJ+CNcGXhZu7wTdI
	 sBlf41LCefbGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62075C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167163908739.2723.8323065541689380493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d114213b785f13c08d226e0762d05dc2531d718169db2ea586ba962c8fb64362
Date: Wed, 21 Dec 2022 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671639087
