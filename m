Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6025E224DD
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 21:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715462543; cv=none; b=OikXppJ+QQmaQ13FDVz1fOlFwzMAuKYZVQDfaphIBTAhzkU3lNyMcRSNvxTYOAuO/taUVKt+hIAu2AGN8czKn2ibR7m8irvrL+Y3qT2D6VEsR/FuK2RaWX5G50wEW6sza/b9jFWVJZcRPkqy5zgLFbecpeTb/+C0H0yX8RV+vGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715462543; c=relaxed/simple;
	bh=WsQpaG9tmpbIrlkce4n02jKpK4gxf3Z9eLn9IoVDKWQ=;
	h=To:Subject:From:Message-Id:Date; b=lDTF+71LI4flWj/XywHXHVCvU8SgbELRxFN8AnnNEbFLiSyaG7/v5+BodCCGlJfO/o46jr1Dp6NuAKOuBWut6g7KT0z7jZfFikEg0xljJaK8Naz87OSXAAjAXeo6hYmNwOSGOsNOxCgN+TU335Fy0WUQHVzs9YANZYnJaS9BpLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNMH3G/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNMH3G/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7373C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715462542;
	bh=WsQpaG9tmpbIrlkce4n02jKpK4gxf3Z9eLn9IoVDKWQ=;
	h=To:Subject:From:Date:From;
	b=FNMH3G/w1sGjl9cEeKSioW8tdbIq42StdWzv9uEjNvxEouCKl1/ppzN3BjZnbE78w
	 OQTB7CEtGEAWKml6yJLegnqkSR8MIL4b/BvxW/UBhbboJBmZQbcKSiGBUrvmIb5jkN
	 ayXpHjzkRIdbKv1A/4feTfKonbVCrrb+ux+d67sDJ//erKD8vKZwKtzWX4GeomAqhl
	 p+GQoVFnq1Sf97yf9bmmTTrkZxJhER1EoujE0fQpA0nemQvb0SD2A/ecrfCKps4Aq5
	 VLeJ6Fka8WhL+YUBFS9H48N5FSO6jAutR7DHHRNrT7HURSUZkLh4YyDecN2iLs0MJ5
	 pgHmCIXWMdz9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4FD6C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 21:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171546254277.27649.4986145472155863058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfaaac558d0edc7a4fa6a50811c6f26474d86c13ef9535219857a5acf14c7721
Date: Sat, 11 May 2024 21:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715462542
