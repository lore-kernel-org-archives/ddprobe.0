Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AF443ABC
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772612694; cv=none; b=cBgseaac6+mnrbCoYkbGSqsO8Hb/AS8FJWxa85ICXiIe6LJSCcYT9+uvT3r2gCbe+vNsTyqDtcZCZwJPxUeYvuWBTyEOWyZXgZ+Kcg+pE4iI4mPuVS0+1ryXi/yAwLeJedBUh6HnM5VYCiwx5cX8877brGj4eZUNxLKEC2zpYPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772612694; c=relaxed/simple;
	bh=bmDwOQH9RCCejAEgLnDDeAOy+m2w0FSYlJiSpfOnftk=;
	h=To:Subject:From:Message-Id:Date; b=HfIqQfXwgaILojG3s6YmFtR6E5+Em3s87gI28Jyg7g7Qm2tQu5oMeOOq0nOc2xI8YadMCs2kCi5pyEIx7BzVQmART0JVJ0cBhC97bGcytiPFfB45ZcunejwQhF6alP7bCBPT5AksMrApk/CnMKWttsRFiTEnq+7xCINeTNBfLKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HoaEKjmz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HoaEKjmz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A50C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772612693;
	bh=bmDwOQH9RCCejAEgLnDDeAOy+m2w0FSYlJiSpfOnftk=;
	h=To:Subject:From:Date:From;
	b=HoaEKjmzdSVB41JnBstR3FMK2ElJq24v/Vbl+4lo/xnvzLD6GA3fq4H7qrPN7DvIz
	 pC/GQS5JW4O9achuKcwAgEn0/pIiz48+KEUveXqr0MPLR/OjjE5n8+t3sPBzM/GhqD
	 Xvt5eAduyxZ832CjB8ZaoNnrA2Ka72gFQbxPBXqVty6sPQoLb7rJnBJPh3r6eFZ41Q
	 EfWmyV+O1F8XdG5HNRQKT1G/qJZLWgt9mUm9WtQuWgLalNXHjAnSuye6ysqGwYNafz
	 9z2rfo9VI1ONbcFnQYAR+byv1Uh2cTtBChb1TE0kmH6M8dWKJ66G0jy4SgTWaALS0G
	 Z/h99c5S4evZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D25EB7EA0
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177261269365.4936.14760256383004373408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a15bea37b651a67d5cb9cca2a2e148befe6afe844e0a179904788d20e41b4f7
Date: Wed, 04 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772612693
