Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22C1259B
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82CC3C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670151054;
	bh=UEFS9fYKXrrzPp+PC6W+O9GcZns2Q9FwUVx5OejHBAg=;
	h=To:Subject:From:Date:From;
	b=Jkl7BkzRaP28Xxk6wjk3fljpJAbW/iOaRi40XqY0Z5MHxkzGf4AoUL40MKixYP5C1
	 Rsytiw1CuEm8qOw6otMIu8S0MgHcJ0RN8K7PQ+hm02qol8Xdkm4SQZgKM7kcRflWnT
	 +Pcn4qxklwsHFdsBRxEs/nz1Xr+piWzIwEmx5X9+w3nfJhf+iKYiEApkWVHrFHcpOo
	 V87AuFSFNriHI+nT+sdzRHA4Wp1lJ98lQUya3Nx4MGXmYcXU14gwIJVVRmoXajA9u9
	 QXBT7m6pQ36QvpjnDu6Cpa6ipSOIU5Q4KM0LWvFC3690Y+Zc+Qd54Jdokv57YmeZMG
	 GZ5gNmKNdvUNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69257C4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167015105438.3906.9495983596688787737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b31d4c130bf9cff234edd68f6357a3b7fef3aa58930a0c8f4bf22894ca86a1d5
Date: Sun, 04 Dec 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670151054
