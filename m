Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162F534A3A7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770972894; cv=none; b=mdj90KpaXRMliJHY7rixyMxOsMsHqtuAu8bAoHhTW6xeTv/LU1lCULgc48RJNkHmR5JocFMIeVKOqV9h+SkBRK9deEFK/fx/F9ZuNN+X9xe+Sg3m6Wi/VPsQ2q4Kh/TD72zNm4aFv8hozqTYm/7cWOx0S5xuKHKrYE4hulCHiQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770972894; c=relaxed/simple;
	bh=Z/B4Cd5AOv+km51e3b+LuoGBWMruXXl3JPFTdGafdO4=;
	h=To:Subject:From:Message-Id:Date; b=PLQiYstFWukVUmwbrwP2mLVmZuW0YRStVW+o1nU7RMJzIzdX8lzr6C6MPp3ahTKEDbvYyKUc3eIFWW2CeNc7Hem9kk/wI/GG+d/bR3J353fLvPBuqFTZAUa0EA1OCh3oS6JDHNTLt2Yxnj2GvL7sAKsE3TZz+8/2gxlkthVyl5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ht4Io/jx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ht4Io/jx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB38C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770972893;
	bh=Z/B4Cd5AOv+km51e3b+LuoGBWMruXXl3JPFTdGafdO4=;
	h=To:Subject:From:Date:From;
	b=ht4Io/jxyv09E/8hGg4K0Osj+pWqnogViyhciGIVm84VJwJ0NgI2tDL6NZIR/PpK9
	 s/DmqiJhQdZ/HlqiYPYpgXbkW3O9ObjWQhFG0htkTSpKehlHgVFGsUSpqEoSKj5RrY
	 30djMqSzAK1WIgZOlx5LaVX0mpdhLKp9G9QWQvocvbZ6RSz3ehytyookf7yzsBPlrf
	 4vKWgI+FKqZ3IvTiJsEyi67wRkPRAQmV3WkXgiOB+xEddwVCrM4K39XxaVCjA1o5do
	 XoG7V3jmf7OKt6uJj6wrul24ykDF7y/IehTt+oi9E2OLqd5jngAEc/XQriFIH1aasx
	 I3VsV66H1N20g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A9BEF48F3
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177097289360.27713.15905728392161271224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd10456b194a3bdc735af0d2b8898c8359d4c921a363973f8ae140b6985f1ce
Date: Fri, 13 Feb 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770972893
