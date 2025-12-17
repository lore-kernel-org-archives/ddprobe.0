Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3482248A4
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765946034; cv=none; b=R31ZsGxuGE968o0eYqT/O5YXIeoLEHiZOlAUrr6WSE2C1h3BM36CRMPfgGmruEskyjw0hovxJzK7cMQqnJJ5ky6Dmdipp20TQYDqlJzJ+7YIiYcRwVXJFXwRN/UmTnrFgTk8xu4DyVOgig/J+M4B5lVvhBVM447pNUekpEVSvok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765946034; c=relaxed/simple;
	bh=oZWgRK2MQEG0MwQiMG8NZlgJeVpnsFUDh64Nj9wUPs0=;
	h=To:Subject:From:Message-Id:Date; b=UD7erUVPAbb/R2lrQ/Sx75mOsQXaXimwPztoSW0FhU/e2dYjf51M/41ZW8mzMPBytv7vIDzWlXu3DTbjQeJKirF7WAD9Va/vFZceDV8XtQ6/q9s36wI64XppWM7AkiG+0Voa1fYFqnofsVE54X4rsFAs9R4m02O1GNz1mDwmwPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2wS5Kyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2wS5Kyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CEBC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765946033;
	bh=oZWgRK2MQEG0MwQiMG8NZlgJeVpnsFUDh64Nj9wUPs0=;
	h=To:Subject:From:Date:From;
	b=a2wS5KyqHK6iFf0LIccAjj9q02DeHudDpc6wDZnxshCSEslC1oFO14+Uj9xO1qg6F
	 1Olroq4PBSE6/qtTiUj8OL4LdPAHeSIcEANdr09VkjYRZdUOHe49kanQOtD2ulwgbd
	 2i45rZM8XJXoYxVUwze+j1NDzWBw+zt7SN9R71AAgh3TND8FWXE36oONVplE83jk9+
	 +5EtSaUwIp9/KMjRpxogYBlycM+3eGikXaa4grjN3IWyaWBH+GKaLe1iT2nvp3uFkr
	 ffZaYJOa+Ta54aNNquRy7QWBahMifB1xoH1HxESGSX/sSP/6ykGE1/YZXA2GX5pggN
	 2iZoHhmlvAhag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE93D64072
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176594603363.22904.16132622250386404028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccc733a49d147e4bd634201481c50a56693935fba6b2b05ceaead23b00499559
Date: Wed, 17 Dec 2025 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765946033
