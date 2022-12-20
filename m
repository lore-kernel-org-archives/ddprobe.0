Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E614C75
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99028C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671553287;
	bh=PT7bj08WMW04fVZnH1ElQ71zqnhY9PS0p8aZ1S20F4s=;
	h=To:Subject:From:Date:From;
	b=I6Fz5/GwpRuVCneqOWcKulZxVGjHMEez/18pVYrY9F5xefXsxRgU4g2SZ/ZsH7TB9
	 1wirbzaDUEYECqC5b77J56FJswXXRX0hQ7doRenWJNckynESAr1paKHCvNPAE35lys
	 JfOrwSTSzVQqMJjMm78V8j9oQi7FPjgJPq0qQ2/PzciWMsjDELp8gfvKQ9R0uuuJGr
	 tITHc5JC6kjM3Fp37A//m1WdeyuU5s71rwn6+lduOMWfva0YqyDGk9SrdaQ3afltt2
	 8XFp9uPRM2AkiPFl8iUz6ACpWUEAnDlGl0DmNYjhLePN8vt/OYEv86huTlFq3gNRd8
	 0Oa2pSkjU9jKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81321C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167155328752.12404.637859852819149909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971cf82cbdc185dd63e8eefca2c568afa801f63707c1d581f61ea4db851f0219
Date: Tue, 20 Dec 2022 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671553287
