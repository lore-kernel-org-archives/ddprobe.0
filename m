Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B827733C7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B96CC433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664545253;
	bh=nIsl8vdoqal4JcN+VEPqekOnbd1Klh6xp7ljROi9J1o=;
	h=To:Subject:From:Date:From;
	b=rYle2CN9DFw1ZeIIHRsxnzL0mRMgjQ17lYy/Hcxsjdjh2Vh3HsqL814zz8eHvuRTy
	 lwK73ttir145spNwa+3ynAusQkUFhB3HKy5s2CNyTXa5XXDlxGIZ9gTqCauC30xoE6
	 NXV8YredEC/VgjcPunOKEDjuGKmvyYhqP+piExQZdVZUJ4VVgMSlPoIOC8Ju5DjQzJ
	 4xAn0GIAOyJrmLHnu7t0yVw11tYiiLMu8iN66jXaOEU0o69V0p6NUSli+iF+ASPf+K
	 ZVXXQh63SEuaVFTdE7v50jkAyBFxhZWC67rIM/hf3qglOJPI6/RSom5uqkCQpnkTPn
	 UbtCeuX0Zttzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB9BC433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166454525331.9601.11919588529959614458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1462d64a71b507a884dcb633574fd17bb90ef29e6d53ab2bcc7cb2333419e2c
Date: Fri, 30 Sep 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664545253
