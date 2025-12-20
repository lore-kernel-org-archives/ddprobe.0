Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D3A2AD37
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766192034; cv=none; b=YmbFKk57Imm/qnBzXz/+QMT5paSKVeZfrP+gUPOtuxf0A+ZwbV1iKy4mAfup+5xc6US/QGNza5k81W434Yz8lX1ukEWjsiwFJ+7HeFyPwUblKBjvhNIGdZT3GUxMdBR7Ex4YRI+aEKJT0fifjijLLy8gGy2yo7HagT+C8ZdOwtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766192034; c=relaxed/simple;
	bh=2RlV+VVcouw1Vj3UZU0F0gCU3RfHi9Szo79KW+FAnH4=;
	h=To:Subject:From:Message-Id:Date; b=fDBT3APmBMzcUBZ3WH97Qbr8blaU6IyTljaXrip29vMtN2j3KDPSUfwwJtJJxldVrwnAxGq2f36ZiU/ZTCeSQtPfFF7Pfix3s4tageQTOnQfQT3yW+xomkcKO/oAeqLsZOqsSsx+suhk6PHCyO5k9G6paz7ZMUoTrQz3prwgBSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nC9nB+4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nC9nB+4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F71C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766192033;
	bh=2RlV+VVcouw1Vj3UZU0F0gCU3RfHi9Szo79KW+FAnH4=;
	h=To:Subject:From:Date:From;
	b=nC9nB+4nnpuZQ05REfYRg67wEJy0gEoMSheDfuvR47zLjztBKlMO9dpY++k9+sD+K
	 8ceH1mojwQcWr/FiTR1xwShQI9IQXBlji4BeFH/Gmyt/mtAaYwiO6ZdM6ot91UF2mB
	 eJeiUB+rgtN72XIZSNgZMLdResQrB8IUDUk8H3sevJ4+LMv9xeo5jvlVJKUFmvGJJG
	 wQqhVN51rKfUlxW3U3l+QPwys6AO9o9Vj3IY3Ge0WL1kGdbuWHM/njkVL2wPxOHflZ
	 NbUjn8XYpyhrP15aSb8sXvGX5Xn9zybqti/mCoOCSj3q7GIl9Pr0uqWWo4RCgifq8l
	 kbXS1yIKIJmCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AEBE668A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176619203358.25331.14937198478197793017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ea70050ba919f0618dd4b62b9f4f27dc6dcd44688fccbea1d1b62e2fdbba16a
Date: Sat, 20 Dec 2025 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766192033
