Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B202114
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 06:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2DF08C4339B
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 06:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686031326;
	bh=Ec3JBe4f1IYCCXWjwRDhQquhbKxsXCaJUpBvMCMuigI=;
	h=To:Subject:From:Date:From;
	b=gtFyBj06sMze7G2S04RhTTcu7wbMCAVC5CG9OJVghEDM9FxCC/A8dN/Z9SscZwzSe
	 7g2S4Ak2teu9sHb6iT4T3Ok3fFmzv7KYVj5Vkvp8hYHK8PhaHubqYnpXs6nrGAWj7n
	 RiSiKQIubICA+1OQAvem/Xn9xqHbL/iec0ssGXhFj2Cusi4WKq2Kf67+8UV3eR40q4
	 c0lGZM9tTHO+I3VS1HGHr7gI+/dh19Lnr1vuqJXca5NsWbgoYVFzaRL9lGLSubZg9b
	 aeTz6dfhdW/wNHrjSNnsJOzIbcxsqcvu+Jl03jKrkgd/doX9XX+NB0Dn1bIzBYTdzq
	 nUSUmD8PKNx7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3103C77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 06:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168603132597.29487.9567364298387061880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e30809120e9b93927af9510b0d750ed5567ccd9c3c6af196d77f926fc3f5d65f
Date: Tue, 06 Jun 2023 06:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686031325
