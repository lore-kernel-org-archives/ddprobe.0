Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E800C28E3
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 11:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82E47C433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 11:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671103287;
	bh=N9TLj7Dyao4tzW39FSy3QS8antFj4rtC0auT3Ukrz0o=;
	h=To:Subject:From:Date:From;
	b=Pa0RKsE8Vt+3SVZKlV5sZ/3stXiG4ybtTXbz+bo9HgNhBx3QLc+oM2WeApjtnGAY+
	 eNUlgLJVf6igo+7mOIXfY00jbbjTnT08qmgXNoSPw4QVbqiDi76UTzuOQbwEBQvLhy
	 /b6kqp6eu1Yo2aEqfj2HCiRSFY0eL78e/qJjS5G8POxJXjmgCfwiFBozbcBhLiTFP3
	 IudMeGyU4qkEtma03hpwyk4roeKsE/rRvtiuBHWR0rJ9w8zlkSh/41q4DmiVlIX3QV
	 Mrr09z0lxYY9foXP2gL0LgS3LCd8tjYS+o6QsDTeyNYFhCuQti2SQS+V9kvZSia9EB
	 coiDWmSY5YE8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6614BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 11:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167110328740.1861.6568468876122826440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90d51d6a23b064ab3599f719b08d441095ccdbb2d89f6fbb0ebb91bacf8c20ca
Date: Thu, 15 Dec 2022 11:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671103287
