Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8B3626
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69654C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664956253;
	bh=UFRWCzOpn2YT+ZqFVlwcnCstAEMqL3/BjR96syfQjXE=;
	h=To:Subject:From:Date:From;
	b=Wx5IrNWSYDp0rlgmR0Zh7AdGSzgqROKYuYPQeAc5dAo+/i9UoJmK1mZwY84KyDftr
	 MFOE7M1VhndJSIsLOwNy7P3Qsf5rvgvk2GbPXAiX6BAvAjWvvwwNCCe6+NJiultIq8
	 eUlXltTBzgWHyBAzjXDtuWEM5FzVnw19TErJjYSxLU2ChB2o69dcVUn7wm+ZcOOJvR
	 eVbj7OeMZR/D4FdHrFUtTukQZTjjyCc5WKwV3mV7bMNXr+z9P5l+VjNxTe2nQXFHyz
	 TIgUwnbg7xrMlIewUhr2H95/oujUCDnErbSfaYlej2Fl5bSfVA2lCYnYRx/PFC9/P8
	 CcZPsCQHAE6Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E3FFC433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166495625331.4185.8582476144548303467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c637380638cbbc66f53c349ddc6b5f30ed50005410b3eb9342108c92d063e589
Date: Wed, 05 Oct 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664956253
