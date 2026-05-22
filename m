Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C19A36495F
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 17:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779472354; cv=none; b=QRphQfX6SLxaqvPK4VDrvhnLam9FHAwoiAyGi675qwEjacMF7N5XkwFLfkKDo5COSSQvHdtD+XhHbVkfTcnhBU4Oc4qdwjOvSIeYUCo0ufrLOzAtDwtnslvegEtjqTNBxyB15olFgCsCwTKJvW0Wra3y7gF7KKczpuhuksdgnqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779472354; c=relaxed/simple;
	bh=hCGWrfm7rcza/FhVew4i3v/xLCkfYWlaJmwEcVnXKYM=;
	h=To:Subject:From:Message-Id:Date; b=QyZdFdjr9s8Jmcxh3SWSos6D1hj5m6oeoJKpkgdkRNLLn+D5j7qgRW3scYfW3sBg9OdwFcLyS967oCF+Zf/FnVFOM7rXMLIpqbBVz6za/enYhwMdNbm5tFBWuW6F38mBhC3TI1if6UfoliRVgdILYXenxql1mrUoOlZNrMWD3tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmDYTLhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmDYTLhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2196C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 17:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779472353;
	bh=hCGWrfm7rcza/FhVew4i3v/xLCkfYWlaJmwEcVnXKYM=;
	h=To:Subject:From:Date:From;
	b=XmDYTLhjffzhrzo4EtMaRSGKwSV4Njy2t9h8oDicfpt05yKCVDdGkzEGZK4qhj7ZR
	 BYL8XyQvaax3b31pRHWfXDTlGV3L4RzDxytJI+HdT4sOvJFHQgVsvov1p4XJQysYOM
	 FYSRfBdqQYUGXoU1J6zxdSE3572uFztsH48b4RawjDKS+TMAlTjwu1VicBKvmonN3L
	 HLjyYDxhw2lfG89blpp1lt7DsV0ADGuZGhT0XoFqMTPr2WlLK2uyf1sUiFpIC/rI/b
	 jxPXgHNkH7iSBmakAE1iMkw4eQrabO/3VfZ4WcUy5rRAhwv6K0OBO9uiQ4d3ZshLTT
	 uoCOVEluzi91A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A914BCD5BB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 17:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177947235368.24755.3018301128104538045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e866ea95fc7d8eae01bdf529b5ea6334b735330515437a514c0845dfa4d4dd86
Date: Fri, 22 May 2026 17:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779472353
