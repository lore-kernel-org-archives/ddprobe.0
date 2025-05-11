Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AB92CCC9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746968994; cv=none; b=aVPjwm5h3b5UlbQJStwUvo+nve+ZZy/WjpG5TyYg8kZs+E/1uPwofIeC/A0OEE5IYclH//mJNXvkXzri20qyWwX8Adk2/huT5O/aPYvNj3gD7F/MIwQnqHXwNwkf7payln3MFqgtvFga8cAzqbj5jjI4p5dWGpUsv5o3R853pM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746968994; c=relaxed/simple;
	bh=pb4CXdN7QEo5+xaUGs9TxR0GKghNq3koJOzZ4OMyi3I=;
	h=To:Subject:From:Message-Id:Date; b=Lnnk7bYdVd2LZIGaCk/szQQRnP4OysveT6sqFEA+caAA9pRd4o334H1SWrSbFAKJSGTOo9IL2s7fO/Bj4u8tmC+fE/hnzbAod+JtYMSaMci67H7nR4hQN0zaaX8+mMtRADCs6uxXjowdhaSuKxDG/QFQrD+jy+FLZbosfV21PV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcFm7kgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcFm7kgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B55C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746968993;
	bh=pb4CXdN7QEo5+xaUGs9TxR0GKghNq3koJOzZ4OMyi3I=;
	h=To:Subject:From:Date:From;
	b=gcFm7kgB56LZZBn1IXohz9YQfbQf4ikNVhKkvuhBcWg3PsiN4KtHp9oz1VRaaxYy/
	 JH3mI2yMBfCWvQjSMcMlgDCm8ueFDwNbUtZTJK/dI8sX2sRfuGSZv2Mj1lwLuvr8x3
	 P6qqXXG+qrgI1ldGqdo+K3B+7HWVjMNMNnFjC40Kkqa//Hl89x8ift0+uqZZSz4PLQ
	 m8mXYNYxaHP1XwyhSzfhha6sFxLKtGZKrsqV2f2WRdcIpPtZhogF//QNKxgMKsYry4
	 HbtGGOwO4Kf8rsceKXt8hiEzz5Nlyjn/m+dGOFfCahxjjW9M0B9GeCbMTIZ3Bnew/F
	 mHw0UOjNl7h0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D53C3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174696899357.18792.8375315033839227848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49de77ee11373f343978c3c67bf2c7b46a61e73c6774ed11160643ac6be5d42
Date: Sun, 11 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746968993
