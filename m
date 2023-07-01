Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E22BC2F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 15:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C123CC433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 15:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688225648;
	bh=ADoY8cyE48DOC4xiP785BXoEAdaNIILLJHggNRdvLl4=;
	h=To:Subject:From:Date:From;
	b=Mkpzg4ZBQQyiIUDu/JjnfEE34qPz+JT0FyWvTf/JKhZ5uZuUkDnSDbl+v5jevdsup
	 T613AEkp11JUTkcP6sgEljaH2LmS5oj73e3AeplgzKSKVjc5hwy4VKiPrfNkNmP0Lj
	 +I0KNhc0eABgPyfhqFX0jrr7JxhfgfUt1zXdIBvenVq+tLJNmfICn5N7dZVl2t4OIy
	 UEeMR50uQV3FL4BlKuGtNgNgtKyccZJXVyq+y9KRMbMPfgncA2Iw7b8aUN+kHl+avd
	 eHiOvjJAiAMGB4mbgMfv9Vxs3MeYZu2s48A9P31fQXthviEMaMNNcGyriUqesSJAHx
	 jEunftXHyzXrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A54B6EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 15:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168822564866.5897.14231410676706953505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d252f60f5c16d2ac276ac2231af4568b885c06bbe8e493138fa43af96cf16c8d
Date: Sat, 01 Jul 2023 15:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688225648
