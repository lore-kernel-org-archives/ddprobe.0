Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDB04DA1F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724734554; cv=none; b=nnEx0WA+qCyKt3Qq7aAPmmtreLQ7IC6Nj7VMpmRKf/AGY88GOjG4TqKajadhFdGXPLikiFW3kHgnu86TCVDNla7N5dsR5qa53rHHhG7UN9W7luz5dh5BEtVQJimqmSTjwGdiEkGmHJ1SlIZtn8smW1z5olfasLpofY49SCptA/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724734554; c=relaxed/simple;
	bh=QosrZK3tV16A5c4h+mi0CTLbNOTl8uKuTEewm4dJT2I=;
	h=To:Subject:From:Message-Id:Date; b=Ma3wfx/DNx6uKknOf+MwPTSVhP5p9p770nP9mCU3rc1BQrIAee9E9vqqrwg1VLw7dYFi7EpMW8QjcUi/fl+ZpvgB2ymAIPnuqzflV0hQnitzFUC6eSI7qmafa6nelA1Gj8j5cVAG8FKoNWBskDtA4oQK3pJ+lLVOSM3Rvx6RCbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/LHE6Vy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/LHE6Vy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B533AC567FB
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724734553;
	bh=QosrZK3tV16A5c4h+mi0CTLbNOTl8uKuTEewm4dJT2I=;
	h=To:Subject:From:Date:From;
	b=Q/LHE6Vyq0a2qI0lJAnn6frwnHONcr80/Z/PScSKqFoIWpZ7VyovNApl/KsZF3yxj
	 wqZdzbzJTly84Hj6Rj26+7S6AdBvaMtDiC7Cw+1EXqQ5jMbCb5SaU7LFyAWTlCVkUn
	 xDuWY+h8Jzjpf2wfMSZCwwro9QIQHsS0d6Bih9x2Vnz7TkKy1xnLeiaNMNzaBa/mZC
	 LCg0mOdzaWuRvDh2FzLQY2yFbpmhfZbrvLt7WC+TS/NcA5IyQlkH8fvKSgxgFZBGKr
	 Kp5dnTHmodqHrWai+ZyJ/L/mfdxEx596dpsigEPvz6ILcxxEA/oAzQa6S4jZ+4rZ73
	 xoqihmCBioZ+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D98BC52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172473455363.31101.13362889275795493168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847e86056cb7c29704e630ede7edb7d2ede13f39f9be49ceb6616cf2bc7cfd8a
Date: Tue, 27 Aug 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724734553
