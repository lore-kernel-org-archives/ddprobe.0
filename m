Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC3D1381B1E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 08:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783241315; cv=none; b=EoTubfBonX3DwWHaIkhNvPJXh1IxlwoHS0m+o9QQfFp7C3U+cPkhoXkcHjtAOd1N6uL/p5U6g3HUtybAdT90GRKW5bpJuWSauPYMDAEBDeMQsC6emEYsRTBn2Ro/0M2WyYTwmfCSY5yFM+Ya1KjClW11QUHgMOtBq10OGLwbAUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783241315; c=relaxed/simple;
	bh=CAk7hB9m9oduq8BRhH06RgHA7YHq+/QbiL++1D1E0Ow=;
	h=To:Subject:From:Message-Id:Date; b=ljpkZ8nYzQFidtQ9Z3LQXTjuMd/hOLvCQWGNvycFBsU+oGMtoW6K/MPcBfGuGoMMGiA2aZCaoKP8N/aP9rOJaNvMug1gvjrVjt62Lqjg7MxS360c7VP1ogoe4wsidM0VO2xvKM0jh2cjvLJaY4xeKP3nwe7AaI9B3a92JW/phRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZ2pcVIW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZ2pcVIW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9EF3C2BCC6
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783241313;
	bh=CAk7hB9m9oduq8BRhH06RgHA7YHq+/QbiL++1D1E0Ow=;
	h=To:Subject:From:Date:From;
	b=HZ2pcVIWwShF7d9fKgUXH/cBSmKrSXsgBUi8IGiRuZeBN+NgzscHo68NVSaGKVOo4
	 rBXmGa4RLQEZSYpQeYRLTFxlyaaC5actYFZJIU5ctkBzZ8KUIT4ctsv7ACLm8QKbj9
	 xnLP+6AcsdNQLlONj8xYHZBLPI8BnkB8u6ATtOyE/Vv5fhrfYJfKzc4G+hxnkcOd28
	 nt5NljPeJXC0Ca2P1USK3cXwRHYEUUyY5jR7Vk8Q4mGcRkqzpMx5ooHcWC6j+nZLi1
	 zKvM3b+uPquNvLuYtFU7YXiInuzcOz8J+zQUqYfne42mkn7IpRat5aqbvOPPtHhtIh
	 eiErw1Mb0L10w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A13C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178324131368.19777.14705200078923096170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab557c2c7402d71c042298946d5bf755c3890abbfd014657b33f66b5db4d408
Date: Sun, 05 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783241313
