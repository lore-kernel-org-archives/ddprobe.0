Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1CC1459F6
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767242634; cv=none; b=mlhdpg9Q0d06hVD3WDBuPoa7fUOjg8Gs9jkw58qMZ1xvU3t3jo0ForHC2BBIKxZnbkAbdclpXxNYaOlDYKv42xIqExHtrt+qato4mSW4J/IcRP0LiTJ0CgCwJ73YciQ/OQRVEMVAHzfgffknx9BcloEYPeZPYatmwRHn1hRwUfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767242634; c=relaxed/simple;
	bh=5VdgZwXXWwAz1iuKp10L0+zLipA5VxDwSsIzj8f4nGI=;
	h=To:Subject:From:Message-Id:Date; b=Me7N968hEbLr7tMf5sjrw5nn4hVxfUhpnlA72AsY9th3h2MTYibAh9KIabrq8407UY2rtUlIpDmqQZgvSOmZ0ac3sBoMX0it2FGCPnBGu7GOzfX+nK0pvEbGi+pFxGd6+p9m81uRxRZ1mK2wMGIdCZzIgBWGzu52UGZ33fNDCnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0eZ+U3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0eZ+U3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9459C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767242633;
	bh=5VdgZwXXWwAz1iuKp10L0+zLipA5VxDwSsIzj8f4nGI=;
	h=To:Subject:From:Date:From;
	b=H0eZ+U3Z+mniNPHc0AQhFEoCmERIZIKhXiFIfyUuYik9VmoBaAeTLchnBLSloXEgM
	 hjoRZndF7o7YJfPsZoapC2cZ4xP8ASLs/ozdeV9LS/lbFT52mhIDbusHVe2i9QA9St
	 S7Gn6z4SUD+Iah/cnbcfwBOxpv8Yxwm6qZCWQtYPN9Z4rZ/zuzkOJbcQzPoXJT+evr
	 KH63wd+FPAbEZ61qq493J+a0ruBzuocYoYJGkPYlObTqUdJT0WnR8vkLDOofn38cIL
	 x8uUb60iQbqP7jLFVwuFtGIaUJTFNO6D6yjCH3iLBddFFGPbaElZa88T7lcnrd/XZm
	 XMxYecZH71oxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9792FEEB56F
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176724263358.16975.16359720489798828108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ddc4902abd8987fed90c60da9be019766c7da11fbf9c8ccd33fa8d9362fe666
Date: Thu, 01 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767242633
