Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C207D19B
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72AEDC433D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668760254;
	bh=iAa42G4w86Tf29VD/Y1FL4yadfpUAlkiiXsCyARZ3Lc=;
	h=To:Subject:From:Date:From;
	b=sGozLQ4ocK3tTLdjjd/FNH/DsebN9nPFNW/qZVJURFP82fWfXHbxjAtFz1rwMQA29
	 GQugkT1Kl6ApVfNCntpun+U2ee1opb+ME3+PqD9q4tLiTHkmWrfRdtgCutiLFyem8H
	 3R0NDTJGLB1zgogvoFWuK47eYKSiYScKJg/zCYsxNF4w90d32b902+WXwIHZJ+hak/
	 erFwgLU+6iG0Nh14hDBR9E3C+QCCNnJnKf084m95WfCikMWplCIJOEk/AlNnYp8ydk
	 PrX8z6WRSSXmcprmqorrgcuQaBZErXAZEv14062t+NEQBy1DfYqKf9oSo7HLkfS2YH
	 uz2Bwg0Tjn7Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C63C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166876025433.18230.13677976132059141726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ffe98b4f86f168d81b9210f9c275214232786494117386dc3b2e8a47ecb2cd7
Date: Fri, 18 Nov 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668760254
